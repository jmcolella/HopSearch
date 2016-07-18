var FavoriteButton = React.createClass({
  render: function() {
    var current_user = this.props.current_user
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    <div>
      <form action="/favorites" method="post">
        <input type="hidden" name="authenticity_token" value = { csrfToken }/>
        <input type="hidden" name="user" value={ current_user }/>
        <input type="submit" value="favorite"/>
      </form>
    </div>
  }
});