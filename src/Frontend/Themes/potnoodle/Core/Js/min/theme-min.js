var jsTheme={init:function(){jsTheme.mobileNav.init(),jsTheme.forms.init()}};jsTheme.mobileNav={init:function(){jsTheme.mobileNav.enableMobileNav(),jsTheme.mobileNav.buildMobileNav()},enableMobileNav:function(){$("html").addClass("mobile-nav")},buildMobileNav:function(){var e=$(".header .inner");e.prepend('<span class="main-nav-trigger">menu</span>');var i=$(".main-nav-trigger"),t=$(".main-nav");i.on("click",function(){t.toggle(),$(this).toggleClass("trigger-active")})}},jsTheme.forms={init:function(){$(".alert-box").on("click",function(e){e.preventDefault(),$(this).closest(".alert-box").fadeOut(300)})}},$(jsTheme.init);var pixelRatio=window.devicePixelRatio?window.devicePixelRatio:1;$(window).on("load",function(){pixelRatio>1&&$(".retina").each(function(){$(this).attr("src",$(this).attr("src").replace(".","@2x."))}),$(function(){$(".main-nav ul a").bind("click",function(e){var i=$(this);$("html, body").animate({scrollTop:$(i.attr("href")).offset().top+"px"},1e3),e.preventDefault()})}),$(function(){$(".back-to-top a").bind("click",function(e){var i=$(this);$("html, body").animate({scrollTop:$(i.attr("href")).offset().top+"px"},1e3),e.preventDefault()})})});