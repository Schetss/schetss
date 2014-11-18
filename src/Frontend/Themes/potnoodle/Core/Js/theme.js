var jsTheme =
{
	// init, something like a constructor
	init: function()
	{
		jsTheme.mobileNav.init();
		jsTheme.forms.init();
		jsTheme.mediaQuery.init();
		//console.log("javascript is locked and loaded!") // for testing purposes. Check your console. Delete after you finished reading this. :-)
	}

};

jsTheme.mobileNav =
{
	init: function()
	{
		jsTheme.mobileNav.enableMobileNav();
		jsTheme.mobileNav.buildMobileNav();
	},

	// CSS is based on the class .mobile-nav
	//
	enableMobileNav: function()
	{
		$("html").addClass("mobile-nav");
	},

	// build mobile nav
	buildMobileNav: function()
	{
		var navHolder = $('.main-header .header-row');

		navHolder.prepend('<span class="main-nav-trigger"></span>');

		var trigger = $('.main-nav-trigger');
		var nav = $('.main-nav');

		trigger.on('click', function() {
			nav.toggle();
			$(this).toggleClass("trigger-active");
		});
	}

};

jsTheme.forms =
{
	init: function()
	{
		$('.alert-box').on('click', function(e)
		{
			e.preventDefault();
			$(this).closest('.alert-box').fadeOut(300);
		});
	}

};

jsTheme.mediaQuery =
{
	init: function()
	{
		if ($(window).width() < 680) {
		    $('#header-row').removeClass('row');
		    	$('.project-overlay').show();

		} else {
		    $('#header-row').addClass('row');
		    $('.project-overlay').hide();
		}
	}
};



$(jsTheme.init);



// JQuery

// Set pixelRatio to 1 if the browser doesn't offer it up.
var pixelRatio = !!window.devicePixelRatio ? window.devicePixelRatio : 1;
 
// Rather than waiting for document ready, where the images
// have already loaded, we'll jump in as soon as possible.
$(window).on("load", function() {
    if (pixelRatio > 1) {
        $('.retina').each(function() {
 
            // Very naive replacement that assumes no dots in file names.
            $(this).attr('src', $(this).attr('src').replace(".","@2x."));
        });
    }

	$(function() {
	    $('.main-nav ul a').bind('click',function(event){
	        var $anchor = $(this);
	 
	        $('html, body').animate({
	            scrollTop: $($anchor.attr('href')).offset().top + "px"
	        }, 1000);
	        event.preventDefault();
	    });
	});

	$(function() {
	    $('.back-to-top a').bind('click',function(event){
	        var $anchor = $(this);
	 
	        $('html, body').animate({
	            scrollTop: $($anchor.attr('href')).offset().top + "px"
	        }, 1000);
	        event.preventDefault();
	    });
	});


	//
	// function to get identifier
	//


	$(function() {
	   var iden_id = window.location.search.split('?identifier=')[1];
		if(iden_id === "contact") 
		{
			$(function() {
		        var $anchor = $("#contact");
		 
		        $('html, body').animate({
		            scrollTop: $($anchor).offset().top + "px"
		        }, 1000);
		        event.preventDefault();
			}); 
		}
	 });

});


//
// project overlay
//

$(document).ready( function(){ 

	if ($(window).width() > 680) {
		$('.project-article').hover( 
            //Mouseover function 
            function(){ 
                $(this).find('.project-overlay').slideDown("fast"); 
            }, //Don't forget the comma here! 
 
            //Mouseout function 
            function(){ 
               $(this).find('.project-overlay').slideUp("fast"); 
            } 
		); 
	}
	else {

	}


	var mq = window.matchMedia( "(max-width: 680px)" );

	$(window).resize(function() {
 		if (mq.matches) {			
		    $('#header-row').removeClass('row');
	    	$('.project-overlay').show();
		}

		else {
			$('.project-overlay').hide();
		    $('#header-row').addClass('row');
		    $('.project-article').hover( 
	            //Mouseover function 
	            function(){ 
	                $(this).find('.project-overlay').slideDown("fast"); 
	            }, //Don't forget the comma here! 
	 
	            //Mouseout function 
	            function(){ 
	               $(this).find('.project-overlay').slideUp("fast"); 
	            } 
    		); 

		}
	
	});

}); 


//
// instagram
//


$(document).ready( function(){ 
	var small = "<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwxMDB8NHw0fHx5ZXN8MXx1bmRlZmluZWR8bm8=10' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:444px; height: 444px' ></iframe>";

	var medium = "<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwyMDB8NXwzfHx5ZXN8MXx1bmRlZmluZWR8bm8=' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:1055px; height: 633px' ></iframe>";

	var large = "<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwyNTB8OHwyfHx5ZXN8MXx1bmRlZmluZWR8bm8=' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:2088px; height: 522px' ></iframe>";

	var xlarge = "<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwzMDB8MTB8Mnx8eWVzfDF8dW5kZWZpbmVkfG5v' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:3110px; height: 622px' ></iframe>";

	var xxlarge = "<iframe src='http://www.intagme.com/in/?u=c2NoZXRzcy5iZXxpbnwzNTB8MTJ8Mnx8eWVzfDF8dW5kZWZpbmVkfG5v' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:4332px; height: 722px' ></iframe>";

	if ($(window).width() < 400) {
		$('.instagram iframe').replaceWith(small);
	}

	else if ($(window).width() > 399 && $(window).width() < 1000) {
		$('.instagram iframe').replaceWith(medium);
	}

	else if ($(window).width() > 999 && $(window).width() < 2000) {
		$('.instagram iframe').replaceWith(large);
	}

	else if ($(window).width() > 1999 && $(window).width() < 3000) {
		$('.instagram iframe').replaceWith(xlarge);
	}

	else {
		$('.instagram iframe').replaceWith(xxlarge);
	}


	var s = window.matchMedia( "(max-width: 399px)" );

	var m = window.matchMedia( "(max-width: 999px)");

	var l = window.matchMedia( "(max-width: 1999px)");

	var xl = window.matchMedia( "(max-width: 2999px)");

	$(window).resize(function() {
 		if (s.matches) {			
			$('.instagram iframe').replaceWith(small);   
		}

		else if (m.matches) {
			$('.instagram iframe').replaceWith(medium);   
		}

		else if (l.matches) {
			$('.instagram iframe').replaceWith(large);   
		}

		else if (xl.matches) {
			$('.instagram iframe').replaceWith(xlarge);   
		}

		else {
			$('.instagram iframe').replaceWith(xxlarge);   
		}

		
	});

}); 








