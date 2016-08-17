var UserFavoritesContainer = React.createClass({
  render: function () {
    return (
      <div className="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center favorites-container">
        <h4>Favorite Hops</h4>
        { this.props.noFavorites }
        {
          this.props.favorites.map( function( favorite ) {
            return <UserFavorite key={ favorite.id } data={ favorite }/>
          })
        }
      </div>
    )
  }
});