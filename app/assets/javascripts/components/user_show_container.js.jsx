var UserShowContainer = React.createClass({
  getInitialState: function() {
    return { user: {}, favorites: [], comments: [] }
  },
  componentDidMount: function() {
    $.ajax({
      url: window.location.href,
      dataType: "json"
    }).done( function( response ) {
      this.setState( { user: response.user } )
      this.setState( { favorites: response.user.favorites } )
      this.setState( { comments: response.user.comments } )
    }.bind( this ))
  },
  render: function() {
    var favorites = this.state.favorites
    var comments = this.state.user.comments
    if( favorites === undefined ) {
      favorites = []
    }
    if( comments === undefined ) {
      comments = []
    }
    return (
      <div className="yield-information">
        <UserInformation data={ this.state.user }/>

        <div className="favorites-container">
          <h4>Favorite Hops</h4>
          {
            favorites.map( function( favorite ) {
              return <UserFavorite key={ favorite.id } data={ favorite }/>
            })
          }
        </div>

        <div className="comments-container">
          <h4>Comments</h4>
          {
            comments.map( function( comment ) {
              return <UserComment key={ comment.id } data={ comment }/>
            })
          }
        </div>
      </div>
    )
  }
});