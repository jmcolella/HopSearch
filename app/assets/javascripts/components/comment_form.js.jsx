var CommentForm = React.createClass({
  render: function() {
    return (
      <div className="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 text-center">
        <form id="post-comment-form" action = { this.props.postURL } method="post">
          <input type="hidden" name="authenticity_token" value = { this.props.csrfToken } />
          <textarea name="comments[body]" placeholder="leave a comment"></textarea>
          <input className="btn btn-default" type="submit" value="post comment"/>
        </form>
      </div>
    )
  }
});