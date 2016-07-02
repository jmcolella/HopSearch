var Hop = React.createClass({
  render: function() {
    var url = "/hops/" + this.props.data.id
    return (
      <div class="individual-hop-container">
        <h2> <a href={ url }> { this.props.data.name }</a> </h2>
      </div>
    )
  }
});