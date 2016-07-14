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
          <li><a href={ editURL }>edit comment</a></li>
          <li>
            <form action={ deleteURL } method="post">
              <input type="hidden" name="_method" value="delete"/>
              <input type="hidden" name="authenticity_token" value={ csrfToken }/>
              <input type="submit" value="delete comment"/>
            </form>
          </li>
        </div>
    }
    return (
      <div className="comment-body">
        <p>{ data.body }</p>
        <ul>
          <li>{ data.comment_user.first_name } { data.comment_user.last_name }</li>
          { editComment }
        </ul>
      </div>
    )
  }
});