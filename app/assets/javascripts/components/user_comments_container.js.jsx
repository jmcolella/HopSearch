var UserCommentsContainer = React.createClass({
  render: function () {
    return (
      <div className="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center comments-container">
        <h4>Comments</h4>
        { this.props.noComments }
        {
          this.props.comments.map( function( comment ) {
            return <UserComment key={ comment.id } data={ comment }/>
          })
        }
      </div>
    )
  }
});