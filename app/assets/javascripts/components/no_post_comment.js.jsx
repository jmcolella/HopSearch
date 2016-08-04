var NoPostComment = React.createClass({
  render: function() {
    return (
      <div>
        <p>Please <a id="login-link" href="/login">login</a> or <a id="sign-up-link" href="/users/new">sign up</a> to leave a comment.</p>
      </div>
    )
  }
})