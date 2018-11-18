import GMaps from 'gmaps/gmaps.js';

import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');

if (mapElement) {
  const map = new GMaps({ el: '#map', lat: 0, lng: 0});
  const markers = JSON.parse(mapElement.dataset.marker);
  const marker_main = markers.shift();
  const radius = parseInt(mapElement.dataset.radius);

  const circle = map.drawCircle({
    lat: marker_main,
    lng: marker_main,
    radius: radius,
    fillColor: 'yellow',
    fillOpacity: 0.3,
    strokeWeight: 0.3,
    strokeColor: 'black',
    strokeOpacity: 0.5,
  });

  // add markers (reviews in the radius)
  map.addMarkers(markers);

  // add the main marker (user typed address)
  map.addMarker({
    lat: marker_main,
    lng: marker_main,
    icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
    animation: google.maps.Animation.DROP,
    click: function(){
      // alert("Hello from the main marker");
      // const myModal = document.getElementById('myModal');
      // myModal.modal('show');
      // console.log(document.getElementById('myModal'));
      // document.getElementById('myModal').modal('show');
      // $('#myModal').modal();
      $('#myModal').modal();
    }
  });

  markers.unshift(marker_main);

  // set zoom
  if (markers.length === 1) {
    map.setCenter(marker_main.lat, marker_main.lng);
    map.fitBounds(circle.getBounds());
  }
  else {
    // 2 possible zoom versions:
    // map.fitLatLngBounds(markers);
    map.fitBounds(circle.getBounds());
  }

}

autocomplete();

