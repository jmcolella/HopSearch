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
    if ( this.state.comments.length === 0 ) {
      var noComments =
        <div id="no-comments-container" className="col-lg-12">
          <p>This hop has no comments.</p>
        </div>
    }
    return (
      <div className="yield-information Site-content">
        <div className="container">
          <div className="row">
            <HopInformation data={ this.state.hop } current_user={ this.props.current_user } logged_in={ this.props.logged_in } favorite={ this.props.favorite }  />
          </div>

          <div className="row">
            <div id="comment-header-container" className="col-lg-12">
              <h2 id="comment-header">Comments</h2>
            </div>
          </div>

          <div className="row comments-container">
            { noComments }
            { this.state.comments.map( function( comment ) {
              return <Comment key = { comment.comment_id } data = { comment } current_user = { this.props.current_user } logged_in = { this.props.logged_in } />
              }.bind( this ))
            }
          </div>

          <div className="row">
            <div className="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-12 post-comment-btn-container">
              <a className="btn btn-default" href= { commentURL }>post a comment</a>
            </div>
          </div>
        </div>
      </div>
    )
  }
});