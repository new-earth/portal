// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery/jquery
//= require jquery-ujs/src/rails
//= require underscore/underscore
//= require backbone/backbone
//= require bootstrap
//= require_self
//= require_tree .
window.App = {
  Views: {}
}
$(document).ready(function() {

  // When mobile size menu link clicked, slide toggle desktop-nav content  
  $("#main-menu .mobile-nav a").click(function(e) { 
    e.preventDefault(); 
    $("#main-menu .desktop-nav").slideToggle(); 
  });

  /* 
   * FIX: Fixes bug where resizing nav to smallest size then toggling open and close on the desktop-nav 
   * content, then resizing to next largest breaktop, nav disappears. toggle is setting display inline 
   * which will override the selector weight of the media query. 
   */
  $(window).resize(function () {
    var width = $(window).width();
    if (width > 1049) {
      $('#main-menu .desktop-nav').show();
    } 
  });

  /* 
   * Autofocus the email field when the login modal is displayed. 
   * Note: I've used a recyclable class of autofocus on the field to autofocus, so this is easily 
   * extendable in the future.
   */
  $('#loginModal').on('shown.bs.modal', function () {
    $('#loginModal .autofocus').focus();
  })
  
});
