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
    if( this.props.favorite && this.props.logged_in ) {
        var favoriteButton =
          <UnfavoriteButton current_user = { this.props.current_user } hop = { this.state.hop } />
    } else if( this.props.logged_in ) {
        var favoriteButton =
          <FavoriteButton current_user = { this.props.current_user } hop = { this.state.hop } />
    }
    return (
      <div className="yield-information Site-content">
        <div className="container">
          <div className="row">
            <HopInformation data={ this.state.hop } />
          </div>

          <div className="favorite-button">
            { favoriteButton }
          </div>

          <div className="row comments-container">
            <h2>Comments</h2>
            { this.state.comments.map( function( comment ) {
              return <Comment key = { comment.comment_id } data = { comment } current_user = { this.props.current_user } logged_in = { this.props.logged_in } />
              }.bind( this ))
            }
          </div>

          <div className="row text-center">
            <a className="btn btn-default post-comment-btn" href= { commentURL }>post a comment</a>
          </div>
        </div>
      </div>
    )
  }
});