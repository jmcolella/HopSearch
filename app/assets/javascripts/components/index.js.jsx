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
            <div className="row">
              <div className="col-lg-12 text-center center-block">
                <p>Use HopSearch to find hops and gather more information. maybe your brewing up a new beer and want to know more about what hops to use. Or maybe you are drinking a brew and want to know more about the hops used to make it. HopSearch can help you find the information you&#39;re looking for in one convenient place.</p>

                <p>find a hop now!</p>
                <SearchForm />
              </div>
            </div>
          </div>
        </section>
      </div>
    )
  }
});