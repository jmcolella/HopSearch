var PostComment = React.createClass({
  render: function() {
    return (
      <div>
        <a className="btn btn-default" href= { this.props.commentURL }>post a comment</a>
      </div>
    )
  }
})