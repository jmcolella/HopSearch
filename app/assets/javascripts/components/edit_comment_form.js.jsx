var EditCommentForm = React.createClass({
  render: function() {
    return (
      <div className="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4">
        <form id="edit-comment-form" action={ this.props.editCommentURL } method="post">
          <input type="hidden" name="_method" value="put"/>
          <input type="hidden" name="authenticity_token" value={ this.props.csrfToken } />
          <textarea name="comments[body]" value={ this.props.commentBody } onChange={ this.props.handleChange }></textarea>
          <input className="btn btn-default" type="submit" value="edit comment"/>
        </form>
      </div>
    )
  }
})