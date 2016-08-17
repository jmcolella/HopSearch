$( document ).ready( function() {
  $( ".favorite-btn" ).on( "click", ".fa-star-o", function( e ) {
    e.preventDefault();

    var url = $(e.target).closest("form").attr("action");
    var type = $(e.target).closest("form").attr("method");
    var data = $(e.target).closest("form").serialize();

    $.ajax({
      url: url,
      type: type,
      data: data
    }).done(function( response ) {
      $(this).addClass(response.icon_class);
      $(this).removeClass("fa-star-o");
      $(this).parent().removeClass("favorite-icon");
      $(this).parent().addClass(response.new_class);
      $(this).closest("form").attr("action", response.action);
      $(this).closest("form").prepend("<input type='hidden' name='_method' value='delete' />")
    }.bind(this));
  });

  $( ".favorite-btn" ).on( "click", ".fa-star", function(e) {
    e.preventDefault();

    var url = $(e.target).closest("form").attr("action");
    var type = $(e.target).closest("form").attr("method");
    var data = $(e.target).closest("form").serialize();

    $.ajax({
      url: url,
      type: type,
      data: data
    }).done(function( response ) {
      $(this).addClass(response.icon_class);
      $(this).removeClass("fa-star");
      $(this).parent().removeClass("unfavorite-icon");
      $(this).parent().addClass(response.new_class);
      $(this).closest("form").attr("action", response.action);
      $(this).closest("form").find("input")[0].remove();
    }.bind(this));
  });
});