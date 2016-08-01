var UserInformation = React.createClass({
  render: function() {
    var user = this.props.data
    return (
      <div id="user-info-container" className="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 text-center">
        <h1>{ user.first_name } { user.last_name }</h1>
        <p>{ user.email }</p>
        <p>{ user.biography }</p>
      </div>
    )
  }
});