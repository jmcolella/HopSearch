var UsersSignUp = React.createClass({
  render: function() {
    var csrfToken = $('meta[name=csrf-token]').attr('content');
    return (
      <div>
        <form action="/users" method="post">
          <input type = "hidden" name = "authenticity_token" value = { csrfToken } />

          <input type = "text" name = "users[first_name]" placeholder = "first name" />

          <input type = "text" name = "users[last_name" placeholder = "last_name" />

          <input type = "text" name = "users[email" placeholder = "email" />

          <input type = "password" name = "users[password]" placeholder = "password" />

          <input type = "submit" value = "sign up" />
        </form>
      </div>
    )
  }
});