{*
	variables that are available:
	- {$items}: contains an array with all posts, each element contains data about the post
*}

<section class="projects">
	{option:!items}
		<p>{$msgBlogNoItems}</p>
	{/option:!items}

	{option:items}
		{iteration:items}
		<div class="project-article">
			<!-- <a href="{$items.full_url}" title="{$items.title}"> -->
				<article>
						{option:items.image}<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$items.image}" alt="{$items.title}" />{/option:items.image}
					<div class="project-overlay">
						<h2>{$items.title}</h2>
						<hr />
						<p><!-- {$items.introduction} --> Komt snel online!</p>
					</div>
				</article>
			<!-- </a> -->
		</div>
		{/iteration:items}
	{/option:items}

	{include:Core/Layout/Templates/Pagination.tpl}
	<div class="clear"></div>
</section>
