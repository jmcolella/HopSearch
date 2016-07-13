var EditComment = React.createClass({
  getInitialState: function() {
    return { comment: {} }
  },
  componentDidMount: function() {
    $.ajax({
      url: window.location.href.split("html")[0] + "json",
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
      <div>
        <form action={ editCommentURL } method="post">
          <input type="hidden" name="_method" value="put"/>
          <input type="hidden" name="authenticity_token" value={ csrfToken } />
          <textarea name="comments[body]" value={ commentBody } onChange={ this.handleChange }></textarea>
          <input type="submit" value="edit comment"/>
        </form>
      </div>
    )
  }
});