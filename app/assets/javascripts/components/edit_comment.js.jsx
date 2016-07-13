var EditComment = React.createClass({
  getInitialState: function() {
    return { comment: {} }
  },
  componentDidMount: function() {
    $.ajax({
      url: window.location.href,
      dataType: "json"
    }).done( function( response ) {
      this.setState( { comment: response.comment } )
    }.bind(this))
  },
  render: function() {
    var editCommentURL = "/hops/" + this.props.hop_id + "/comments/" + this.props.comment_id
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    return (
      <div>
        <form action={ editCommentURL } method="post">
          <input type="hidden" name="_method" value="put"/>
          <input type="hidden" name="authenticity_token" value={ csrfToken } />
          <textarea name="comments[body]" value={ this.state.comment.body }></textarea>
          <input type="submit" value="edit comment"/>
        </form>
      </div>
    )
  }
});