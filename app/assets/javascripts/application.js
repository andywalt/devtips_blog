// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require masonry/jquery.masonry
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


$(document).ready(function(){
setTimeout(function(){
  $('#notice_wrapper').fadeOut("slow", function() {
    $(this).remove();
  })
}, 2500);
});

$('.dropdown-toggle').dropdown()

$('body').scrollspy({ target: '#about', })
$('body').scrollspy({ target: '#blog', })


$(function() {
	$('.prayer_praise_title').click(function() {
		$('.prayer_praise_reveal_area').slideToggle(600);
	});
});