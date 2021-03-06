{include:{$PATH_WWW}/src/Install/Layout/Templates/Head.tpl}

<h2>Settings</h2>
{form:step4}
	{option:formError}<div class="formMessage errorMessage"><p>{$formError}</p></div>{/option:formError}
		<div>
			<h3 class="noPadding">Modules</h3>
			<p>Which modules would you like to install?</p>
			<ul id="moduleList" class="inputList noPadding">
				{iteration:modules}
					<li>{$modules.chkModules} <label for="{$modules.id}">{$modules.label}</label></li>
				{/iteration:modules}
			</ul>

			<h3>Example data</h3>
			<p>If you are new to Fork CMS, you might prefer to have an example website with a default theme set up.</p>
			<ul class="inputList noPadding">
				<li>
					{$chkExampleData} <label for="exampleData">Install example data </label>
					<span class="helpTxt">(The blog-module is required and will be installed)</span>
				</li>
			</ul>

			<h3>Debug mode</h3>
			<p>Warning: debug mode is only useful when developing on Fork CMS.</p>
			<p>You can enable debug mode by adding "SetEnv FORK_DEBUG 1" in your virtualhosts file.</p>
			<ul class="inputList noPadding">
				<li>
					{$chkDifferentDebugEmail} <label for="differentDebugEmail">Use a specific debug email address </label>
					<span class="helpTxt">(Exception emails will be sent to this email address)</span>
				</li>
				<li id="debugEmailHolder">
					{$txtDebugEmail} {$txtDebugEmailError}
				</li>
			</ul>
		</div>
		<div class="fullwidthOptions">
			<div class="buttonHolder">
				<a href="index.php?step=3" class="button">Previous</a>
				<input id="installerButton" class="inputButton button mainButton" type="submit" name="installer" value="Next" />
			</div>
		</div>
{/form:step4}

{include:{$PATH_WWW}/src/Install/Layout/Templates/Foot.tpl}
