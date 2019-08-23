$(document).ready(function()
{

	$("a.scrollto").click(function () {
	elementClick = jQuery(this).attr("href")
	destination = jQuery(elementClick).offset().top - 60;
	jQuery("html:not(:animated),body:not(:animated)").animate({scrollTop: destination}, 500);
	return false;
	});

	$.fn.scrollEnd = function(callback, timeout) {          
	  $(this).scroll(function(){
	    var $this = $(this);
	    if ($this.data('scrollTimeout')) {
	      clearTimeout($this.data('scrollTimeout'));
	    }
	    $this.data('scrollTimeout', setTimeout(callback,timeout));
	  });
	};

	$(window).scroll(function(){
	    if ($(window).scrollTop() > 100)
	    {
	    	$('#navbar').fadeOut();
	    	fade = 500;
	    }
	   	else
	   	{
	   		fade = 0;
	   		$('#navbar').fadeIn();
	   	}
	});
	var fade = 500;
	$(window).scrollEnd(function(){
	    $('#navbar').fadeIn();
	}, fade);

});
