var Login = React.createClass({
  render: function() {
    var csrfToken = $('meta[name=csrf-token]').attr('content');
    return (
      <div>
        <form action="/login" method="post">
          <input type = "hidden" name = "authenticity_token" value = { csrfToken } />

          <input type = "text" name = "users[email" placeholder = "email" />

          <input type = "password" name = "users[password]" placeholder = "password" />

          <input type = "submit" value = "login" />
        </form>
      </div>
    )
  }
});