<header class="holder header-holder">
	<div class="row header-row">
		<div class="header">

			{* SEO logo: H1 for home, p for other pages *}

			{option:isPage1}
				<a title="{$siteTitle}" href="/"><img class="logo" src="/src/Frontend/Core/Layout/images/logo.png" alt="logo" /></a>
			{/option:isPage1}

			{option:!isPage1}
				<p><a title="{$siteTitle}" href="/">{$siteTitle}</a></p>
			{/option:!isPage1}

			{* Navigation *}
			<nav class="main-nav">
				{$var|getnavigation:'page':0:1}
			</nav>

			{* Meta *}
			<nav>
				{$var|getnavigation:'meta':0:1}
			</nav>

			{* Languages *}
			{option:languages}
				<nav>
					{include:Core/Layout/Templates/Languages.tpl}
				</nav>
			{/option:languages}

		</div>
	</div>
</header>

