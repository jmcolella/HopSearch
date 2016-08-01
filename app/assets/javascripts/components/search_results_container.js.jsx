var SearchResultsContainer = React.createClass({
  render: function() {
    var search_results = this.props.search_results
    if( search_results.length === 0 ) {
      var noSearchResults =
        <NoSearchResults />
    }
    return (
      <div className="container yield-information">
        <div className="row">
          <div className="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 text-center">
            <h2 className="hop-index-search-header">Search Results</h2>
          </div>
        </div>

        <div className="border"></div>

        <div className="row">
          {
            search_results.map(function(result, index) {
              return <Hop key={index} data={result} />
            })
          }

          { noSearchResults }
        </div>

        <div className="row return-home-button">
          <ReturnHome />
        </div>
      </div>
    )
  }
})