var UserFavorite = React.createClass({
  render: function() {
    var hopName = this.props.hop.name
    var hopURL = "/hops" + this.props.hop.id
    return (
      <p><a href=hopURL>{ hopName }</a></p>
    )
  }
});