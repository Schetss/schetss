{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<section id="sitetop">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}
	</section

	<main id="main" class="holder main-holder" role="main">
		<div class="main">
			<div class="row">

				<div cladd="content-left">
					{* Left position *}
					{option:positionLeft}
						{iteration:positionLeft}
						{option:!positionLeft.blockIsHTML}
							{$positionLeft.blockContent}
						{/option:!positionLeft.blockIsHTML}
						{option:positionLeft.blockIsHTML}
							{$positionLeft.blockContent}
						{/option:positionLeft.blockIsHTML}
						{/iteration:positionLeft}
					{/option:positionLeft}
				</div>


				<div cladd="content-right">
					{* Right position *}
					{option:positionRight}
						{iteration:positionRight}
						{option:!positionRight.blockIsHTML}
							{$positionRight.blockContent}
						{/option:!positionRight.blockIsHTML}
						{option:positionRight.blockIsHTML}
							{$positionRight.blockContent}
						{/option:positionRight.blockIsHTML}
						{/iteration:positionRight}
					{/option:positionRight}
				</div>



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