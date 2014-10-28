{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<section id="sitetop">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}
	</section

	<main id="main" class="holder main-holder" role="main">
		<div class="main">
			<div class="row">
				<!-- 
				{* Page title *}
				{option:!hideContentTitle}
					<header class="mainTitle">
						<h1>{$page.title}</h1>
					</header>
				{/option:!hideContentTitle}
 -->
				{* Main position *}
				{option:positionMain}
					{iteration:positionMain}
					{option:!positionMain.blockIsHTML}
						{$positionMain.blockContent}
					{/option:!positionMain.blockIsHTML}
					{option:positionMain.blockIsHTML}
						{$positionMain.blockContent}
					{/option:positionMain.blockIsHTML}
					{/iteration:positionMain}
				{/option:positionMain}
			</div>
		</div>
	</main>

	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>