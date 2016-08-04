var UserFavorite = React.createClass({
  getInitialState: function() {
    return { hop: {} }
  },
  componentDidMount: function() {
    $.ajax({
      url: "/hops/" + this.props.data.hop_id,
      dataType: "json"
    }).done( function( response ) {
      this.setState( { hop: response.hop } )
    }.bind( this ))
  },
  render: function() {
    var hop = this.state.hop
    var hopURL = "/hops/" + hop.hop_id
    return (
      <div className="user-show-list">
        <p><a href={ hopURL }>{ hop.name}</a></p>
      </div>
    )
  }
});