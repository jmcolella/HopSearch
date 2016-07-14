var Navbar = React.createClass({
  render: function() {
    if( this.props.current_user != null ) {
      var user_link = "/users/" + this.props.current_user.id
    }
    if( this.props.logged_in ) {
      var nav =
        <div className="collapse navbar-collapse" id="hopsearch-navbar-collapse">
          <ul className="nav navbar-nav navbar-right">
            <li><a href="/hops">hops</a></li>
            <li><a href={ user_link }>{ this.props.current_user.first_name }</a></li>
            <li><a href="/logout">Logout</a></li>
          </ul>
        </div>
    } else {
      var nav =
        <div className="collapse navbar-collapse" id="hopsearch-navbar-collapse">
          <ul className="nav navbar-nav navbar-right">
            <li><a href="/hops">hops</a></li>
            <li><a href="/users/new">Sign Up</a></li>
            <li><a href="/login">Login</a></li>
          </ul>
        </div>
    }
    return (
      <nav className="navbar navbar-default">
        <div className="container-fluid">
          <div className="navbar-header">
            <button type="button" className="navbar-toggle collapsed" data-toggle="collapse" data-target="#hopsearch-navbar-collapse" aria-expanded="false">
              <span className="sr-only">Toggle navigation</span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
              <span className="icon-bar"></span>
            </button>
            <a className="navbar-brand" href="/">HopSearch</a>
          </div>

          { nav }
        </div>
      </nav>
    )
  }
});