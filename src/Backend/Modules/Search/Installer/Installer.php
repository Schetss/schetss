<?php

namespace Backend\Modules\Search\Installer;

/*
 * This file is part of Fork CMS.
 *
 * For the full copyright and license information, please view the license
 * file that was distributed with this source code.
 */

use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Filesystem\Exception\IOException;

use Backend\Core\Installer\ModuleInstaller;

/**
 * Installer for the search module
 *
 * @author Matthias Mullie <forkcms@mullie.eu>
 * @author Dieter Vanden Eynde <dieter.vandeneynde@netlash.com>
 */
class Installer extends ModuleInstaller
{
    /**
     * Install the module
     */
    public function install()
    {
        // load install.sql
        $this->importSQL(dirname(__FILE__) . '/Data/install.sql');

        // add 'search' as a module
        $this->addModule('Search');

        // import locale
        $this->importLocale(dirname(__FILE__) . '/Data/locale.xml');

        // general settings
        $this->setSetting('Search', 'overview_num_items', 10);
        $this->setSetting('Search', 'validate_search', true);

        // module rights
        $this->setModuleRights(1, 'Search');

        // action rights
        $this->setActionRights(1, 'Search', 'AddSynonym');
        $this->setActionRights(1, 'Search', 'EditSynonym');
        $this->setActionRights(1, 'Search', 'DeleteSynonym');
        $this->setActionRights(1, 'Search', 'Settings');
        $this->setActionRights(1, 'Search', 'Statistics');
        $this->setActionRights(1, 'Search', 'Synonyms');

        // set navigation
        $navigationModulesId = $this->setNavigation(null, 'Modules');
        $navigationSearchId = $this->setNavigation($navigationModulesId, 'Search');
        $this->setNavigation($navigationSearchId, 'Statistics', 'search/statistics');
        $this->setNavigation(
            $navigationSearchId,
            'Synonyms',
            'search/synonyms',
            array('search/add_synonym', 'search/edit_synonym')
        );

        // settings navigation
        $navigationSettingsId = $this->setNavigation(null, 'Settings');
        $navigationModulesId = $this->setNavigation($navigationSettingsId, 'Modules');
        $this->setNavigation($navigationModulesId, 'Search', 'search/settings');

        // add extra's
        $searchId = $this->insertExtra('Search', 'block', 'Search', null, null, 'N', 2000);
        $this->insertExtra('Search', 'widget', 'SearchForm', 'Form', null, 'N', 2001);

        // loop languages
        foreach ($this->getLanguages() as $language) {
            // check if a page for search already exists in this language
            // @todo refactor this nasty if statement...
            if (!(bool) $this->getDB()->getVar(
                'SELECT 1
                 FROM pages AS p
                 INNER JOIN pages_blocks AS b ON b.revision_id = p.revision_id
                 WHERE b.extra_id = ? AND p.language = ?
                 LIMIT 1',
                array($searchId, $language)
            )
            ) {
                // insert search
                $this->insertPage(
                    array(
                         'title' => \SpoonFilter::ucfirst($this->getLocale('Search', 'Core', $language, 'lbl', 'Frontend')),
                         'type' => 'root',
                         'language' => $language
                    ),
                    null,
                    array('extra_id' => $searchId, 'position' => 'main')
                );
            }
        }

        // activate search on 'pages'
        $this->searchPages();

        // create module cache path
        $fs = new Filesystem();
        if (!$fs->exists(PATH_WWW . '/src/Frontend/Cache/Search')) {
            $fs->mkdir(PATH_WWW . '/src/Frontend/Cache/Search');
        }
    }

    /**
     * Activate search on pages
     */
    private function searchPages()
    {
        // make 'pages' searchable
        $this->makeSearchable('Pages');

        // get db instance
        $db = $this->getDB();

        // get existing menu items
        $menu = $db->getRecords(
            'SELECT id, revision_id, language, title
             FROM pages
             WHERE status = ?',
            array('active')
        );

        // loop menu items
        foreach ($menu as $page) {
            // get blocks
            $blocks = $db->getColumn(
                'SELECT html FROM pages_blocks WHERE revision_id = ?',
                array($page['revision_id'])
            );

            // merge blocks content
            $text = strip_tags(implode(' ', $blocks));

            // add page to search index
            $db->execute(
                'INSERT INTO search_index (module, other_id, language, field, value, active)
                 VALUES (?, ?, ?, ?, ?, ?)
                 ON DUPLICATE KEY UPDATE value = ?, active = ?',
                array(
                     'Pages',
                     (int) $page['id'],
                     (string) $page['language'],
                     'title',
                     $page['title'],
                     'Y',
                     $page['title'],
                     'Y'
                )
            );
            $db->execute(
                'INSERT INTO search_index (module, other_id, language, field, value, active)
                 VALUES (?, ?, ?, ?, ?, ?)
                 ON DUPLICATE KEY UPDATE value = ?, active = ?',
                array('Pages', (int) $page['id'], (string) $page['language'], 'text', $text, 'Y', $text, 'Y')
            );
        }
    }
}
