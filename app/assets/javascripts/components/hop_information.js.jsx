var HopInformation = React.createClass({
  render: function() {
    var hop = this.props.data
    if( this.props.favorite && this.props.logged_in ) {
        var favoriteButton =
          <UnfavoriteButton current_user = { this.props.current_user } hop = { hop } />
    } else if( this.props.logged_in ) {
        var favoriteButton =
          <FavoriteButton current_user = { this.props.current_user } hop = { hop } />
    }
    return (
      <div className="hop-container col-lg-12">
        <h1>{ hop.name }</h1>

        <div className="favorite-button">
          { favoriteButton }
        </div>

        <p>{ hop.description }</p>
        <div className="hop-information-list">
          <ul>
            <li>{ hop.country_of_origin }</li>
            <li>Alpha Acid: { hop.alpha_acid }%</li>
            <li>Beta Acid: { hop.beta_acid }%</li>
          </ul>
        </div>
      </div>
    )
  }
});