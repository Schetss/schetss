<section id="contact">
<div class="pre-footer">
	<div class="row">
		<h3>Wij zijn alvast geïnteresseerd, u ook?</h3></a>
	</div>
</div>
<footer class="holder footer-holder">
	<div class="row">
		<div class="contact-pointer"></div>
		<div class="footer">
			<div class="contact-info">
				<ul class="sm"> 
					<li><a href="https://www.facebook.com/schetss" target="_blank"><img src="/src/Frontend/Core/Layout/images/facebook.png" alt="facebook" class="retina"></a></li>
					<li><a href="https://twitter.com/schetss" target="_blank"><img src="/src/Frontend/Core/Layout/images/twitter.png" alt="twitter" class="retina"></a></li>
					<li><a href="https://www.linkedin.com/company/schetss" target="_blank"><img src="/src/Frontend/Core/Layout/images/linkedin.png" alt="linkedin" class="retina"></a></li>
				</ul>
				<h5>Interesse? stuur een mail.</h5>
				<p><a href="mailto:hello@schetss.be">hello@schetss.be</a></p>
				
				<h5>Vind ons terug.</h5>
				<p> Keizer Karelstraat 116 - bus 003 <br />
					9000 Gent <br />
					<a href="https://www.google.be/maps/place/Keizer+Karelstraat+116,+9000+Gent/@51.0512378,3.733086,17z/data=!3m1!4b1!4m2!3m1!1s0x47c3714c1dd5f0f1:0xbb01fa82b848317b">Op de kaart</a>

				</p>
				<p class="copyright">
					&copy; {$now|date:'Y'} {$siteTitle}
				</p>
			</div>

			<div class="contact-form">	
				<!-- <h5>Stuur een bericht.</h5>			 -->
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
	<hr class="endline" />
	<div class="back-to-top">
		<a href="#sitetop">Terug naar boven</a>
	</div>

</footer>
</section>

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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="{$THEME_URL}/Core/Js/theme.js"></script>

{* Site wide HTML *}
{$siteHTMLFooter}
