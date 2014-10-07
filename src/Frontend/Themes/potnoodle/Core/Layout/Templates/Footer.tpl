<footer class="holder footer-holder">
	<div class="row">
		<div class="footer">
			<div class="contact-info">
				<h5>Vind ons ook op </h5>
				<ul class="sm"> 
					<li><a href="#"><img src="/src/Frontend/Core/Layout/images/facebook.png" alt="facebook"></a></li>
					<li><a href="#"><img src="/src/Frontend/Core/Layout/images/twitter.png" alt="twitter"></a></li>
					<li><a href="#"><img src="/src/Frontend/Core/Layout/images/linkedin.png" alt="linkedin"></a></li>
				</ul>
				<h5>Stuur gerust een mail</h5>
				<p><a href="mailto:hello@schetss.be">hello@schetss.be</a></p>
				<h5>Waar zijn we </h5>

				<p> Keizer Karelstraat 116 - bus 003 <br />
					9000 Gent <br />
					<a href="#">Op de kaart</a>

				</p>
				<p>
					&copy; {$now|date:'Y'} {$siteTitle}
				</p>
			</div>

			<div class="contact-form">

				{* Formbuilder *}
				{option:positionBottom}
					{iteration:positionBottom}
					{option:!positionBottom.blockIsHTML}
						{$positionBottom.blockContent}
					{/option:!positionBottom.blockIsHTML}
					{option:positionBottom.blockIsHTML}
						{$positionBottom.blockContent}
					{/option:positionBottom.blockIsHTML}
					{/iteration:positionBottom}
				{/option:positionBottom}

			</div>
		</div>
	</div>
</footer>

<noscript>
	<div class="holder">
		<div class="row">
			<div class="alert-box notice">
				<h4>{$lblEnableJavascript|ucfirst}</h4>
				<p>{$msgEnableJavascript}</p>
			</div>
		</div>
	</div>
</noscript>

{* General Javascript *}
{iteration:jsFiles}
	<script src="{$jsFiles.file}"></script>
{/iteration:jsFiles}

{* Theme specific Javascript *}
<script src="{$THEME_URL}/Core/Js/theme.js"></script>

{* Site wide HTML *}
{$siteHTMLFooter}
