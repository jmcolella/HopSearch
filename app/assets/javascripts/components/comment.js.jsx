var Comment = React.createClass({
  render: function() {
    var data = this.props.data
    var current_user = this.props.current_user
    var logged_in = this.props.logged_in
    var editURL = "/hops/" + data.hop.id + "/comments/" + data.comment_id + "/edit"
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    var deleteURL = "/hops/" + data.hop.id + "/comments/" + data.comment_id
    if( current_user && data.comment_user.id === current_user.id ) {
      var commentOptions =
        <CommentOptions
            editURL={editURL}
            deleteURL={deleteURL}
            csrfToken={csrfToken} />
    }
    return (
      <div className="comment-body col-lg-12">
        <p className="comment-text">{ data.body }</p>
        <ul className="comment-body-info">
          <li><a className="user-comment-link" href={"/users/" + data.comment_user.id}>{ data.comment_user.first_name } { data.comment_user.last_name }</a></li>
          { commentOptions }
        </ul>
      </div>
    )
  }
});