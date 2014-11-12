<header class="holder header-holder">

	<div class="main-header">

		<div class="main-header-image">
			<div class="image-overlay"></div>
			{option:!item.image}
				{* Image position *}
				{option:positionImage}
					{iteration:positionImage}
					{option:!positionImage.blockIsHTML}
						{$positionImage.blockContent}
					{/option:!positionImage.blockIsHTML}
					{option:positionImage.blockIsHTML}
						{$positionImage.blockContent}
					{/option:positionImage.blockIsHTML}
					{/iteration:positionImage}
				{/option:positionImage}
				{/option:!item.image}
				{option:item.image}
					<img src="{$FRONTEND_FILES_URL}/blog/images/source/{$item.image}" alt="{$item.title}" itemprop="image" />
		 	{/option:item.image}
		</div>	

		<div class="header-left"></div><div class="header-right"></div>
		
		<div id="header-row" class="row header-row">
			<div class="header">
				{* SEO logo: H1 for home, p for other pages *}

				<a title="{$siteTitle}" href="/"><img class="logo retina" src="/src/Frontend/Core/Layout/images/logo.png" alt="logo" /></a>
		
				{* Navigation *}
				<nav class="main-nav">
					{$var|getnavigation:'page':0:1}
				</nav>

			</div>
		</div>

		<div class="row main-header-title">
			{* Page title *}
			<header>
				{option:!hideContentTitle}
					{* Header position *}
					{option:positionHeader}
						{iteration:positionHeader}
						{option:!positionHeader.blockIsHTML}
							{$positionHeader.blockContent}
						{/option:!positionHeader.blockIsHTML}
						{option:positionHeader.blockIsHTML}
							{$positionHeader.blockContent}
						{/option:positionHeader.blockIsHTML}
						{/iteration:positionHeader}
					{/option:positionHeader}
				{/option:!hideContentTitle}
				{option:item.title}
					<h1 class="main-title">{$item.title}</h1>
				{/option:item.title}
			</header>
			
		</div>
	</div>
</header>