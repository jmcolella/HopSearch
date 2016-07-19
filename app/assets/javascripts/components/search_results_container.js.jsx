var SearchResultsContainer = React.createClass({
  render: function() {
    var search_results = this.props.search_results
    if( search_results.length === 0 ) {
      var noSearchResults =
        <p>There are no results for that search.</p>
    }
    return (
      <div className="yield-information">
        <h2 className="hop-index-search-header">Search Results</h2>

        <div className="container">
          <div className="row">
            {
              search_results.map(function(result, index) {
                return <Hop key={index} data={result} />
              })
            }

            { noSearchResults }

          <div className="row return-home-button">
            <ReturnHome />
          </div>

          </div>
        </div>
      </div>
    )
  }
})