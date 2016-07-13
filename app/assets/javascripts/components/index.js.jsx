var Index = React.createClass({
  render: function() {
    if( this.props.current_user != null ) {
      var user_link = "/users/" + this.props.current_user.id
    }
    if( this.props.logged_in ) {
      var nav =
        <div>
          <ul>
            <li><a href={ user_link }>{ this.props.current_user.first_name }</a></li>
            <li><a href="/logout">Logout</a></li>
          </ul>
        </div>
    } else {
      var nav =
        <div>
          <ul>
            <li><a href="/users/new">Sign Up</a></li>
            <li><a href="/login">Login</a></li>
          </ul>
        </div>
    }

    return (
      <div class="container">
        <h1>HopSearch</h1>

        { nav }

        <p><a href="/hops">search for hops</a></p>
      </div>
    )
  }
});