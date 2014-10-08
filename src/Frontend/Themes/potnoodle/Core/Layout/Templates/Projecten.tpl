{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<!--[if lt IE 8]>
		<div class="alert-box">
			<p>You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser to improve your experience.</p>
		</div>
	<![endif]-->
	
	{* Header *}
	{include:Core/Layout/Templates/HeaderProjecten.tpl}

		<main id="main" class="holder main-holder" role="main">
			<div class="row">
				<div class="main">

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