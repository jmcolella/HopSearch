var Comment = React.createClass({
  render: function() {
    var data = this.props.data
    var current_user = this.props.current_user
    var logged_in = this.props.logged_in
    if( data.comment_user === current_user ) {
      var editComment =
        <div>
          <li>edit comment</li>
          <li>delete comment</li>
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