{include:Core/Layout/Templates/Head.tpl}

<body class="{$LANGUAGE}" itemscope itemtype="http://schema.org/WebPage">
	<section id="sitetop">
		{* Header *}
		{include:Core/Layout/Templates/Header.tpl}
	</section

	<main id="main" class="holder main-holder" role="main">
		<div class="main">
			<div class="row">
				<div class="triangle-top"></div>
				<div class="quote">
					<p class="quote-title">Creatief digitaal</p>
					<p class="quote-p">Van idee tot werkend eindproduct binnen uw deadline.</p>
				</div>
			</div>

				<div class="home-images">
					<div class="image-overlay2"></div>
					<div class="instagram">
						<!-- www.intagme.com -->
						<iframe src="http://www.intagme.com/in/?u=c2NoZXRzc3Rpam58aW58MzAwfDEwfDJ8ZjhmOGY4fG5vfDF8dW5kZWZpbmVkfG5v" allowTransparency="true" frameborder="0" scrolling="no" style="border:none; overflow:hidden; width:3010px; height: 602px" ></iframe>
					</div>
					
					<div class="row ">	
						<div class="triangle-top2"></div>
					</div>

					<div class="volg-btn">
						<a href="/nl/projecten">Volg ons op instagram</a>
					</div>

				</div>
				<div class="row">
					<div class="triangle-top"></div>
					<div class="quote">
						<p class="quote-title">Creatief digitaal</p>
						<p class="quote-p">Van idee tot werkend eindproduct binnen uw deadline.</p>
					</div>
				</div>


				<div class="content">
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

				{* Main2 position *}
				{option:positionMain2}
					{iteration:positionMain2}
					{option:!positionMain2.blockIsHTML}
						{$positionMain2.blockContent}
					{/option:!positionMain2.blockIsHTML}
					{option:positionMain2.blockIsHTML}
						{$positionMain2.blockContent}
					{/option:positionMain2.blockIsHTML}
					{/iteration:positionMain2}
				{/option:positionMain2}
		
		</div>
	</main>

	{* Footer *}
	{include:Core/Layout/Templates/Footer.tpl}

</body>
</html>