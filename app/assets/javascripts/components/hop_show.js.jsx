var HopShow = React.createClass({
  getInitialState: function() {
    return { hop: {}, comments: [] }
  },
  componentDidMount: function() {
    $.ajax({
      url: window.location.href.json,
      dataType: "json"
    }).done( function( response ) {
      this.setState( { hop: response.hop } )
      this.setState( { comments: response.comments } )
    }.bind(this))
  },
  render: function() {
    var commentURL = "/hops/" + this.state.hop.hop_id +"/comments/new"
    return (
      <div className="yield-information">
        <div className="hop-container">
          <h1>{ this.state.hop.name }</h1>
          <p>{ this.state.hop.description }</p>
          <ul>
            <li>{ this.state.hop.country_of_origin }</li>
            <li>Alpha Acid: { this.state.hop.alpha_acid }</li>
            <li>Beta Acid: { this.state.hop.beta_acid }</li>
          </ul>
        </div>

        <div className="favorite-button">
          <FavoriteButton current_user = { this.props.current_user } hop = { this.state.hop }/>
        </div>

        <div className="comments-container">
          { this.state.comments.map( function( comment ) {
            return <Comment key = { comment.comment_id } data = { comment } current_user = { this.props.current_user } logged_in = { this.props.logged_in } />
            }.bind( this ))
          }
        </div>

        <a className="btn btn-default" href= { commentURL }>post a comment</a>
      </div>
    )
  }
});