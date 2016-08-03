var LocationsInformationContainer = React.createClass({
  render: function() {
    var locations = this.props.locations;
    return (
      <div className="col-lg-12">
        {
          locations.map( function( location, index ) {
            return <LocationPanel key={ location.id } data={ location } index={ index + 1 } />
          })
        }
      </div>
    )
  }
});