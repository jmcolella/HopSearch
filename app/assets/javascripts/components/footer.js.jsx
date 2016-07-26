var Footer = React.createClass({
  render: function() {
    return (
      <div className="footer navbar-fixed-bottom">
        <div className="container">
          <div className="row">
            <div className="col-lg-6 col-md-6 col-sm-12">
              <p>Copyright John Colella 2016</p>
              <p><a href="www.github.com/jmcolella/HopSearch">source code</a></p>
            </div>

            <div className="col-lg-6 col-md-6 col-sm-12">
              <p>made with the BreweryDB API</p>
              <p>additional API information researched and supplied by John Colella</p>
            </div>
          </div>
        </div>
      </div>
    )
  }
});