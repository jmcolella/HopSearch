var SearchResultsContainer = React.createClass({
  render: function() {
    var search_results = this.props.search_results
    if( search_results.length === 0 ) {
      var noSearchResults =
        <p>There are no results for that search.</p>
    }
    return (
      <div className="yield-information">
        <h2>Search Results</h2>

        {
          search_results.map(function(result, index) {
            return <Hop key={index} data={result} />
          })
        }

        { noSearchResults }
      </div>
    )
  }
})