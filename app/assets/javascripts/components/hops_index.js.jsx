var HopsIndex = React.createClass({
  getInitialState: function() {
    return { hopsList: [] };
  },
  componentDidMount: function() {
    $.ajax({
      url: "/hops",
      dataType: "json"
    }).done( function( response ) {
      this.setState( { hopsList: response.hops } )
    }.bind(this));
  },
  render: function() {
    return (
      <div className="yield-information">
        <Header
            classes="hop-index-search-header"
            headerTitle="list of hops" />

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