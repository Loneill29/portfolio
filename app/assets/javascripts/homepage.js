// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {

  $(".home-menu-link").click(function(e) {
    e.preventDefault();
    $(".home-menu-overlay").toggleClass("open");
    $(".home-menu").toggleClass("open");
  });

});
