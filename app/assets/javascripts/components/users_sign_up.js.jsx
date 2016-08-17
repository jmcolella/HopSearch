var UsersSignUp = React.createClass({
  render: function() {
    var csrfToken = $('meta[name=csrf-token]').attr('content');
    if ( this.props.errors.length > 0 ) {
      var signUpErrors =
        <ErrorsContainer errors={this.props.errors} />
    };
    return (
      <div id="sign-up-page">

        <Header
          classes=""
          headerTitle="sign up for HopSearch" />

        <form id="sign-up-page-form" action="/users" method="post">
          <div id="sign-up-page-form-group" className="form-group input-group">
            <input className="form-control" type = "hidden" name = "authenticity_token" value = { csrfToken } />

            <input className="form-control" type = "text" name = "users[first_name]" placeholder = "first name" />

            <input className="form-control" type = "text" name = "users[last_name" placeholder = "last name" />

            <input className="form-control" type = "text" name = "users[email" placeholder = "email" />

            <input className="form-control" type = "password" name = "users[password]" placeholder = "password" />

            <input className="btn btn-default" type = "submit" value = "sign up" />
          </div>
        </form>

        <div className="row errors-container">
          { signUpErrors }
        </div>
      </div>
    )
  }
});