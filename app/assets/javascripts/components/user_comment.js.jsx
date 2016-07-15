var UserComment = React.createClass({
  render: function() {
    var comment = this.props.data
    var hopURL = "/hops/" + comment.hop_id
    return (
      <div>
        <p><a href={ hopURL }>{ comment.body }</a></p>
      </div>
    )
  }
});