var Map = React.createClass({
  componentDidMount: function() {
    var map;
    function initMap() {
      map = new google.maps.Map(this.refs.map, {
        center: {lat: -34.397, lng: 150.644},
        zoom: 8
      });
    };
  },
  render: function() {
    return (
      <div className="yield-information">
        <div className="map-style" ref="map">I am a map</div>
      </div>
    )
  }
});