var Hop = React.createClass({
  render: function() {
    var url = "/hops/" + this.props.data.id
    return (
      <div className="col-lg-4 col-md-6 col-sm-12 col-xs-12 individual-hop-container">
        <h2> <a className="hop-link" href={ url }> { this.props.data.name }</a> </h2>
      </div>
    )
  }
});