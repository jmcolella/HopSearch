var NewCommentContainer = React.createClass({
  render: function() {
    var postURL = "/hops/" + this.props.hop_id + "/comments"
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    if ( this.props.errors.length > 0 ) {
      var commentErrors =
        <ul className="errors-list">
          {
            this.props.errors.map(function(err, index) {
              return <Error key={index} data={err} />
            })
          }
        </ul>
    }
    return (
      <div id="post-comment-container" className="container yield-information">
        <div className="row">
          <div className="col-lg-4 col-lg-offset-4 text-center">
            <h1 id="post-comment-header">post a comment</h1>
          </div>
        </div>

        <div className="border"></div>

        <div className="row">
          <CommentForm postURL={ postURL } csrfToken={ csrfToken } />
        </div>

        <div className="row text-center errors-container">
          { commentErrors }
        </div>
      </div>
    )
  }
})