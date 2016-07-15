var UserComment = React.createClass({
  render: function() {
    var comment = this.props.comment
    var hop = comment.hop
    var hopURL = "/hops/" + hop.id
    return (
      <div>
        <p>{ comment.body }</p>
        <p>Hop: <a href={ hopURL }>{ hop.name }</a></p>
      </div>
    )
  }
});