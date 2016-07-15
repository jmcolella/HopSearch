var UserInformation = React.createClass({
  render: function() {
    var user = this.props.data
    return (
      <div>
        <h1>{ user.first_name } { user.last_name }</h1>
        <p>{ user.email }</p>
        <p>{ user.biography }</p>
      </div>
    )
  }
});