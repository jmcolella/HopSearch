var SearchForm = React.createClass({
  render: function() {
    return (
      <div>
        <form action="/hops/search" method="get">
          <div id="hop-search-form" className="form-group input-group">
            <input type="text" name="search[hop]" className="form-control text-input" placeholder="search for a hop"/>
            <input type="submit" value="search" className="btn btn-default search-btn"/>
          </div>
        </form>
      </div>
    )
  }
})