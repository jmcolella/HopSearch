var Login = React.createClass({
  render: function() {
    var csrfToken = $('meta[name=csrf-token]').attr('content');
    if ( this.props.errors.length > 0 ) {
      var loginErrors =
        <ul className="errors-list">
          {
            this.props.errors.map(function(err, index) {
              return <Error key={index} data={err} />
            })
          }
        </ul>
    };
    return (
      <div id="login-page" className="yield-information">

        <h1>login to HopSearch</h1>

        <div className="border"></div>

        <form id="login-form" action="/login" method="post">
          <div id="login-form-group" className="form-group input-group">
            <input className="form-control" type = "hidden" name = "authenticity_token" value = { csrfToken } />

            <input className="form-control" type = "text" name = "users[email" placeholder = "email" />

            <input className="form-control" type = "password" name = "users[password]" placeholder = "password" />

            <input className="btn btn-default" type = "submit" value = "login" />
          </div>
        </form>

        <div className="row text-center errors-container">
          { loginErrors }
        </div>
      </div>
    )
  }
});