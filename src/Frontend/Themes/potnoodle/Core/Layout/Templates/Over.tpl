{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<!--[if lt IE 8]>
		<div class="alert-box">
			<p>You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser to improve your experience.</p>
		</div>
	<![endif]-->
	
	{* Header *}
	{include:Core/Layout/Templates/HeaderOver.tpl}

		<main id="main" class="holder main-holder" role="main">
			<div class="main">
				<div class="overons-main row">
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
					<div class="clear"></div>
				</div>

				<div class="overons-part2">
					<div class="row">
						<div class="overons-left">
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
					
						<div class="overons-right">
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
					</div>
				</div>
				
				<div class="overons-part3">
					<div class="overons-middle">
						{* Middle position *}
						{option:positionMiddle}
							{iteration:positionMiddle}
							{option:!positionMiddle.blockIsHTML}
								{$positionMiddle.blockContent}
							{/option:!positionMiddle.blockIsHTML}
							{option:positionMiddle.blockIsHTML}
								{$positionMiddle.blockContent}
							{/option:positionMiddle.blockIsHTML}
							{/iteration:positionMiddle}
						{/option:positionMiddle}
					</div>
				</div>
			</div>
		</main>


	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>