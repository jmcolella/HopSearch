var UserShowContainer = React.createClass({
  getInitialState: function() {
    return { user: {} }
  },
  componentDidMount: function() {
    $.ajax({
      url: "/users/" + this.props.current_user.id,
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

        <UserInformation data={ this.state.user }/>

        <div className="row">
          <UserFavoritesContainer noFavorites={noFavorites} favorites={favorites} />

          <UserCommentsContainer noComments={noComments} comments={comments} />
        </div>

      </div>
    )
  }
});