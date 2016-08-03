var Index = React.createClass({
  render: function() {
    return (
      <div>
        <header>
          <div className="container header-content">
            <div className="row header-content-inner">
              <div className="main-name col-lg-12">
                <h1>HopSearch</h1>
                <p>find and learn more about the wild world of hops</p>
               <button id="header-button" className="btn btn-default" href="#about">learn more</button>
              </div>
            </div>
          </div>
        </header>

        <section id="about">
          <div className="container">
            <div className="row" id="about-section-text">
              <div className="col-lg-12 text-center center-block">
                <p>use HopSearch to find hops and gather more information. maybe you&#39;re brewing up something new and want to know more about what hops to use. or maybe you&#39;re drinking a brew and are curious as to what hops were used to make it. HopSearch can help you find the information you&#39;re looking for in one convenient place.</p>
              </div>
            </div>
          </div>
        </section>

        <section id="icons">
          <div className="container">
            <div className="row">
              <div className="col-lg-4 col-md-4 col-sm-12 text-center icon-container">
                <i className="fa fa-search fa-4x icon" aria-hidden="true"></i>
                <h1 className="icon-sub-header">search for hops</h1>
              </div>
              <div className="col-lg-4 col-md-4 col-sm-12 text-center icon-container">
                <i className="fa fa-star fa-4x icon" aria-hidden="true"></i>
                <h1 className="icon-sub-header">favorite hops you like</h1>
              </div>
              <div className="col-lg-4 col-md-4 col-sm-12 text-center icon-container">
                <i className="fa fa-comment-o fa-4x icon" aria-hidden="true"></i>
                <h1 className="icon-sub-header">comment and discuss</h1>
              </div>
            </div>
          </div>
        </section>

        <section id="search-map">
          <div className="container">
            <div className="row">
              <div className="col-lg-6 col-md-6 col-sm-12 text-center center-block search-map-containers">
                <h2>find a hop</h2>
                <SearchForm />
              </div>

              <div className="col-lg-6 col-md-6 col-sm-12 text-center center-block search-map-containers">
                <h2>use the map</h2>
                <p>explore the world to find out where the best hops are grown. powered by Google Maps</p>
              </div>
            </div>
          </div>
        </section>
      </div>
    )
  }
});