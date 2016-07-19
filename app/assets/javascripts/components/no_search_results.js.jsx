var NoSearchResults = React.createClass({
  render: function() {
    return (
      <div className="no-search-results">
        <p>There are no results for that search.</p>
        <p>Search again:</p>
        <SearchForm />
      </div>
    )
  }
})