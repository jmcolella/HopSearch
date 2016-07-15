var UserFavorite = React.createClass({
  render: function() {
    var hop = this.props.data.hop
    var hopURL = "/hops" + hop.id
    return (
      <p><a href={ hopURL }>{ hop.name}</a></p>
    )
  }
});