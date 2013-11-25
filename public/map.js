var info = L.control({position: 'bottomright'});
var map;
var clicked = null;

function highlightFeature(e) {
  var layer = e.target;
    if( clicked != layer  ){
    layer.setStyle({
      weight: 5,
      color: '#666',
      dashArray: '',
      fillOpacity: 0.7
    });

    if (!L.Browser.ie && !L.Browser.opera) {
      layer.bringToFront();
    }
  }

  info.update(layer.feature.properties);
}

function resetHighlight(e) {
  var layer = e.target;
  if( clicked != layer  ){
    layer.setStyle({
      fillColor: "#555",
      weight: 2,
      opacity: 1,
      color: 'white',
      dashArray: '3',
      fillOpacity: 0.7
    });

  }
  info.update(layer.feature.properties);
}

function zoomToFeature(e) {
  var layer = e.target;

  layer.setStyle({
    fillColor: "#C00",
    weight: 2,
    opacity: 1,
    color: 'white',
    dashArray: '3',
    fillOpacity: 0.7
  });

  if( clicked != null )
    clicked.setStyle({
      fillColor: "#555",
      weight: 2,
      opacity: 1,
      color: 'white',
      dashArray: '3',
      fillOpacity: 0.7
    });

  clicked = layer;

  $(".nextTab").removeClass("disabled");
  $(".county_name").val( layer.feature.properties[ "NAME_2" ] )
}

function onEachFeature(feature, layer) {
  layer.on({
    mouseover: highlightFeature,
    mouseout: resetHighlight,
    click: zoomToFeature
  });
}

function style(e) {
  var layer = e.target;
  return {
    fillColor: "#555",
    weight: 2,
    opacity: 1,
    color: 'white',
    dashArray: '3',
    fillOpacity: 0.7
  };
}

function addInfo( map ){
  info.onAdd = function (map) {
      this._div = L.DomUtil.create('div', 'info');
      this.update();
      return this._div;
  };

  // method that we will use to update the control based on feature properties passed
  info.update = function (props) {
      this._div.innerHTML = '<h4>Cidade</h4>' +
        ( props ?
          '<strong>' + props["NAME_2"] + '</strong>'
          : '<span>Passe o mouse na cidade</span>');
  };

  info.addTo(map);
}

$(function(){
  map = new L.Map('map', {center: new L.LatLng(-22.3, -43), zoom: 7.8});
  L.geoJson( geoJson, { style: style, onEachFeature: onEachFeature } ).addTo(map);

  addInfo( map );
  
})