var HopsIndex = React.createClass({
  getInitialState: function() {
    return { hopsList: [] };
  },
  componentDidMount: function() {
    $.ajax({
      url: "http://localhost:3000/hops",
      dataType: "json"
    }).done( function( response ) {
      this.setState( { hopsList: response.hops } )
    }.bind(this));
  },
  render: function() {
    return (
      <div>
        { this.state.hopsList.map( function( hop, index ) {
            return <Hop key = { hop.id } data = { hop } />
          })
        }
      </div>
    )
  }
});