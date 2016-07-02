var HopShow = React.createClass({
  getInitialState: function() {
    return { hop: {} }
  },
  componentDidMount: function() {
    $.ajax({
      url: window.location.href,
      dataType: "json"
    }).done( function( response ) {
      this.setState( { hop: response.hop } )
    }.bind(this))
  },
  render: function() {
    return (
      <div>
        <h1>{ this.state.hop.name }</h1>
        // render other hop information
      </div>

      // render in here comment list and comment form
    )
  }
});