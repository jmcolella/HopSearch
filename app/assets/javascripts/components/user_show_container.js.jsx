var UserShowContainer = React.createClass({
  getInitialState: function() {
    return { user: {} }
  },
  componentDidMount: function() {
    $.ajax({
      url: window.location.href,
      dataType: "json"
    }).done( function( response ) {
      this.setState( { user: response.user } )
    }.bind( this ))
  },
  render: function() {
    return (
      <div>
        <UserInformation data={ this.state.user }/>

        <div className="favorites-container">
          <h4>Favorite Hops</h4>
          {
            this.state.user.favorites.map( function( favorite ) {
              <UserFavorite key={ favorite.id } data={ favorite }/>
            })
          }
        </div>

        <div className="comments-container">
          <h4>Comments</h4>
          {
            this.state.user.comments.map( function( comment ) {
              <UserComment key={ comment.id } data={ comment }/>
            })
          }
        </div>
      </div>
    )
  }
});