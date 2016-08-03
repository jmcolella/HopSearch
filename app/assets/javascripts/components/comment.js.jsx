var Comment = React.createClass({
  render: function() {
    var data = this.props.data
    var current_user = this.props.current_user
    var logged_in = this.props.logged_in
    var editURL = "/hops/" + data.hop.id + "/comments/" + data.comment_id + "/edit"
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    var deleteURL = "/hops/" + data.hop.id + "/comments/" + data.comment_id
    if( data.comment_user.id === current_user.id ) {
      var editComment =
        <div>
          <li><a className="user-edit-comment-link" href={ editURL }>edit comment</a></li>
          <li>
            <form action={ deleteURL } method="post">
              <input type="hidden" name="_method" value="delete"/>
              <input type="hidden" name="authenticity_token" value={ csrfToken }/>
              <input className="user-delete-comment-btn" type="submit" value="delete comment"/>
            </form>
          </li>
        </div>
    }
    return (
      <div className="comment-body col-lg-12">
        <p className="comment-text">{ data.body }</p>
        <ul className="comment-body-info">
          <li><a className="user-comment-link" href={"/users/" + data.comment_user.id}>{ data.comment_user.first_name } { data.comment_user.last_name }</a></li>
          { editComment }
        </ul>
      </div>
    )
  }
});