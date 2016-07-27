var HopInformation = React.createClass({
  render: function() {
    var hop = this.props.data
    return (
      <div className="hop-container col-lg-12">
        <h1>{ hop.name }</h1>
        <p>{ hop.description }</p>
        <div className="hop-information-list">
          <ul>
            <li>{ hop.country_of_origin }</li>
            <li>Alpha Acid: { hop.alpha_acid }%</li>
            <li>Beta Acid: { hop.beta_acid }%</li>
          </ul>
        </div>
      </div>
    )
  }
});