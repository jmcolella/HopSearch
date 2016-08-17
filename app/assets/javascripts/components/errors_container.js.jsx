var ErrorsContainer = React.createClass({
  render: function () {
    return (
      <ul className="errors-list">
        {
          this.props.errors.map(function(err, index) {
            return <Error key={index} data={err} />
          })
        }
      </ul>
    )
  }
});