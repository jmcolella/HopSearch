$( document ).ready(function() {
  $( "#header-button" ).on( "click", function( e ) {
    e.preventDefault();
    $('html, body').animate({
      scrollTop: $("#about").offset().top
    }, 700);
  });
});