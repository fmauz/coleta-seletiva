var info = L.control({position: 'bottomright'});
var map;
var clicked = null;

function highlightFeature(e) {
  var layer = e.target;
  if( clicked != layer  ){
    layer.setStyle({
      weight: 2,
      color: '#666',
      dashArray: '3',
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
      fillColor: getColor( layer.feature ),
      weight: 2,
      opacity: 1,
      color: 'white',
      dashArray: '3',
      fillOpacity: 0.7
    });

  }

  if( clicked != null )
    info.update( clicked.feature.properties );
  else
    info.update( null )
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
      fillColor: getColor(e),
      weight: 2,
      opacity: 1,
      color: 'white',
      dashArray: '3',
      fillOpacity: 0.7
    });

  clicked = layer;

  $(".nextTab").removeClass("disabled");
  $(".county_name").val( layer.feature.properties[ "NM_MUNICIP" ] )
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
    fillColor: getColor(e),
    weight: 2,
    opacity: 1,
    color: 'white',
    dashArray: '3',
    fillOpacity: 0.7
  };
}

function getColor( e ){
  if ( e.properties == undefined )
    e = e.target.feature;

  if( e.properties["color"] == undefined )
    e.properties["color"] = "#F5A056"; //$.xcolor.lighten($.xcolor.random(), 6);

  var color = muns[ e.properties.CD_GEOCODM ];
  if( color == "" ) color = e.properties["color"];
  return color;
}

function addInfo( map ){
  info.onAdd = function (map) {
      this._div = L.DomUtil.create('div', 'info');
      this.update();
      return this._div;
  };

  // method that we will use to update the control based on feature properties passed
  info.update = function (props) {
      this._div.innerHTML = '<h4>Município</h4>' +
        ( props ?
          '<strong>' + props["NM_MUNICIP"] + '</strong>'
          : '<span>Passe o mouse na cidade</span>');
  };

  info.addTo(map);
}

$(function(){
  map = new L.Map('map', {center: new L.LatLng(-22.1, -43), zoom: 7.6, scrollWheelZoom: false});
  L.geoJson( geoJson, { style: style, onEachFeature: onEachFeature } ).addTo(map);

  addInfo( map );

})
