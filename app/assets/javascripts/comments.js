$( document ).ready( function() {
  $( ".comments-container" ).on( "submit", ".comment-delete-form", function( e ) {
    e.preventDefault();

    var url = e.target.action;
    var data = $(e.target).serialize();

    $.ajax({
      url: url,
      data: data,
      type: "DELETE"
    }).done( function( response ) {
      $(this).closest(".comment-body").remove()
    }.bind( this ));
  });
});