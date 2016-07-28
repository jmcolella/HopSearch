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
      <div className="yield-information">
        <h1 className="hop-index-search-header">list of hops</h1>

        <div className="border"></div>

        <div className="container">
          <div className="row">
              { this.state.hopsList.map( function( hop, index ) {
                  return <Hop key = { hop.id } data = { hop } />
                })
              }
          </div>
        </div>
      </div>
    )
  }
});