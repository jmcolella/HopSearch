var CommentForm = React.createClass({
  render: function() {
  var postURL = "/hops/" + this.props.hop_id + "/comments"
  var token = $('meta[name="csrf-token"]').attr('content')
    return (
      <div>
        <h3>Leave a comment</h3>
        <form action = { postURL } method="post">
          <input type="hidden" name="authenticity_token" value = { token } />
          <textarea name="comments[body]" placeholder="leave a comment"></textarea>
          <input type = "submit" value = "post comment"/>
        </form>
      </div>
    )
  }
});