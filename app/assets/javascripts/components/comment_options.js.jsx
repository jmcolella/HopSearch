var CommentOptions = React.createClass({
  render: function () {
    return (
      <div>
        <li><a className="user-edit-comment-link" href={ this.props.editURL }>edit comment</a></li>
        <li>
          <form action={ this.props.deleteURL } method="post" className="comment-delete-form">
            <input type="hidden" name="_method" value="delete"/>
            <input type="hidden" name="authenticity_token" value={ this.props.csrfToken }/>
            <input className="user-delete-comment-btn" type="submit" value="delete comment"/>
          </form>
        </li>
      </div>
    )
  }
});