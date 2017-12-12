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
//= require jquery
//= require jquery.easing
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


window.setTimeout(function() {
$("#flash").fadeTo(6000, 0).slideUp(1500, function()
{
$(this).remove();
});
}, 8000);

$(document).on('turbolinks:load', function() {
	$("#devise-button").click(function(){
		if ($(".signup_vebar").css('display') == "none") {
	  		$(".signup_vebar").show(1000);
	  		$(".signin_vebar").hide(750);
	  		$(this).html("Click here for login");
	  	} else {
	  	    $(".signup_vebar").hide(750);
	  		$(".signin_vebar").show(1000);
	  		$(this).html("Click here to create a new account");
	  	};
	});

	$("select.dropdown-selector").select2({
		theme: "bootstrap"
	});
});



