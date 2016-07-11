var CommentForm = React.createClass({
  render: function() {
  var token = $('meta[name="csrf-token"]').attr('content')
    return (
      <div>
        <form action="/comments" method="post">
          <input type="hidden" name="csrf-token" value = { token } />
          <textarea name="body" placeholder="leave a comment"></textarea>
        </form>
      </div>
    )
  }
});