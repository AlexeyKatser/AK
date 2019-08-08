// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require bootstrap
//= require twitter/bootstrap
//= require_tree 

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
	    $('#navbar').fadeOut();
	});

	$(window).scrollEnd(function(){
	    $('#navbar').fadeIn();
	}, 500);

});