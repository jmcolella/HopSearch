var FavoriteButton = React.createClass({
  render: function() {
    var current_user_id = this.props.current_user.id
    var hop_id = this.props.hop.hop_id
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    return (
      <div className="favorite-btn">
        <form action="/favorites" method="post">
          <input type="hidden" name="authenticity_token" value = { csrfToken }/>
          <input type="hidden" name="user_id" value={ current_user_id }/>
          <input type="hidden" name="hop_id" value={ hop_id }/>
          <button className="favorite-icon" type="submit"><i className="fa fa-star-o fa-2x" aria-hidden="true"></i></button>
        </form>
      </div>
    )
  }
});