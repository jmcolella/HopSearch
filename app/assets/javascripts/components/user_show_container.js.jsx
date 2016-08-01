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
    var favorites = this.state.user.favorites
    var comments = this.state.user.comments
    if( favorites === undefined ) {
      favorites = []
    } else if( favorites.length === 0 ) {
      var noFavorites =
        <div className="blank-user-lists">
          <p>You do not have any favorite hops.</p>
          <a className="btn btn-default" href="/hops">explore</a>
        </div>
    }
    if( comments === undefined ) {
      comments = []
    } else if( comments.length === 0 ) {
      var noComments =
        <div className="blank-user-lists">
          <p>You have not written any comments.</p>
          <a className="btn btn-default" href="/hops">explore</a>
        </div>
    }
    return (
      <div id="user-show-container" className="container yield-information">
        <div className="row">
          <UserInformation data={ this.state.user }/>
        </div>

        <div className="row">
          <div className="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center favorites-container">
            <h4>Favorite Hops</h4>
            { noFavorites }
            {
              favorites.map( function( favorite ) {
                return <UserFavorite key={ favorite.id } data={ favorite }/>
              })
            }
          </div>

          <div className="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center comments-container">
            <h4>Comments</h4>
            { noComments }
            {
              comments.map( function( comment ) {
                return <UserComment key={ comment.id } data={ comment }/>
              })
            }
          </div>
        </div>
      </div>
    )
  }
});