var NewCommentContainer = React.createClass({
  render: function() {
    var postURL = "/hops/" + this.props.hop_id + "/comments"
    var csrfToken = $('meta[name="csrf-token"]').attr('content')
    return (
      <div classNmae="container">

      </div>
    )
  }
})