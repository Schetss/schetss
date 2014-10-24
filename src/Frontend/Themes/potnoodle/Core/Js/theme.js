var jsTheme =
{
	// init, something like a constructor
	init: function()
	{
		jsTheme.mobileNav.init();
		jsTheme.forms.init();
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
		var navHolder = $('.header .inner');

		navHolder.prepend('<span class="main-nav-trigger">menu</span>');

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

});


//
// project overlay
//

$(document).ready( function(){ 

        		$('.project-overlay').hide();
        //Toggle 
        // $('.project-overlay').toggle( 
        //     //first click 
        //     function(){ 
        //         //slide down the list to make it visible 
        //         $('.project-overlay').slideUp(); 
        //     }, //Don't forget the comma here! 
 
        //     //second click 
        //     function(){ 
        //         //Slide up the list to hide it 
        //         $('.project-overlay').slideDown(); 
        //     } 
        // ); 
 
        // //Hover simple 
        // $('.project-article').hover( 
        //     //mouseover 
        //     function(){ 
        //         $(this).css('color', 'blue') 
        //     }, //don't forget the comma here! 
 
        //     //mouseout 
        //     function(){ 
        //         $(this).css('color', 'red') 
        //     } 
        // ); 
 
        //Hover - more complex 
        $('.project-article').hover( 
            //Mouseover function 
            function(){ 
                $(this).find('.project-overlay').slideDown(); 
            }, //Don't forget the comma here! 
 
            //Mouseout function 
            function(){ 
               $(this).find('.project-overlay').slideUp(); 
            } 
        ); 
 
 
    }); 


