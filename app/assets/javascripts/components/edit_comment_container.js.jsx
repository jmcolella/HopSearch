var EditCommentContainer = React.createClass({
  getInitialState: function() {
    return { comment: {} }
  },
  componentDidMount: function() {
    $.ajax({
      url: window.location.href.json,
      dataType: "json"
    }).done( function( response ) {
      this.setState( { comment: response.comment } )
    }.bind(this))
  },
  handleChange: function(event) {
    this.setState({comment: event.target.value});
  },
  render: function() {
    var editCommentURL = "/hops/" + this.props.hop_id + "/comments/" + this.props.comment_id
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    var commentBody = this.state.comment.body
    return (
      <div id="edit-comment-container" className="container yield-information">
        <div className="row">
          <div className="col-lg-4 col-lg-offset-4 text-center">
            <h1 id="edit-comment-header">edit comment</h1>
          </div>
        </div>

        <div className="border"></div>

        <div className="row">
          <EditCommentForm editCommentURL={editCommentURL} csrfToken={csrfToken} commentBody={commentBody} handleChange={this.handleChange} />
        </div>
      </div>
    )
  }
});