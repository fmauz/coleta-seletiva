// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require jquery.validate.min
//= require jquery.mask.min

function remove_fields(link) {
  $(link).siblings("input[type=hidden]").val("1");
  $(link).parents(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $("#" + association).append( content.replace(regexp, new_id) );
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function getElementFromJson( data, nodes ){
  names = ""
  for( key in data ){
    nodes.push( key )
    
    if( typeof( data[key] ) != "object" || Object.keys( data[key] ).length == 0 ){
      names = nodes.join(".");
    }else{
      names = getElementFromJson( data[key], nodes )
    }
  }

  return names;
}

function changeTagsInputs( data ){
  elements = getElementFromJson( data, []).split('.');
  namespace = elements.shift();
  $(elements).each(function(i,el){
    var nameElement = namespace + "." + el;
    $("[data-element-ajax='" + nameElement + "']").val( eval( "data." + nameElement ) );
  });
}

$(function(){
  $("[data-ajax-url]").change(function(){
    var _self = $( this );
    var code = _self.val();
    var url = _self.data( 'ajax-url' ).replace(/({.*})/, code );
    $.ajax({
      url: url,
      method: "GET",
      type: "json",
      success: changeTagsInputs
    });

  });

  $("[data-query-string]").each(function(){
    var _self = $( this );
    _self.val( getParameterByName("county_code") );
    _self.trigger("change");
  });

  $("[validate-form]").validate({
    invalidHandler: function(e, validator) {
      var errors = validator.numberOfInvalids();
      if (errors) {
        var message = errors == 1
          ? 'Você não preencheu 1 campo. Verifique abaixo'
          : 'Você não preencheu ' + errors + ' campos. Verifique abaixo';
        $("div.error span:last").html(message);
        $("div.error").removeClass('hide');
      } else {
        $("div.error").addClass('hide');
      }
    }
  });

  $("a.prevTab").click(function(evt){
    evt.preventDefault();
    var self = $(this);
    var tabContent = $( self.parents(".tab-content") );
    var itemActive = tabContent.find(".tab-pane.active");
    var tabPanel = itemActive.prev(".tab-pane");
    itemActive.removeClass("active");
    tabPanel.addClass("active");
    tabContent.find("a.nextTab").removeClass("disabled");

    if( tabPanel.prev(".tab-pane").length == 0 )
      self.addClass("disabled");

    if( tabPanel.next(".tab-pane").length == 0 )
      self.addClass("disabled");

    self.trigger("shown.bs.tab", { target: tabPanel } );
  })

  $("a.nextTab").click(function(evt){
    evt.preventDefault();
    var self = $(this);
    var tabContent = $( self.parents(".tab-content") );
    var itemActive = tabContent.find(".tab-pane.active");
    var tabPanel = itemActive.next(".tab-pane");
    itemActive.removeClass("active");
    tabPanel.addClass("active");
    tabContent.find("a.prevTab").removeClass("disabled");

    if( tabPanel.next(".tab-pane").length == 0 )
      self.addClass("disabled")

    self.trigger("shown.bs.tab", { target: tabPanel } );
  });

  $( "[data-number-only]" ).each(function(){
    var self = $(this);
    self.mask("999999999999999999"), {reverse: true, maxlength: false}
  });

  $( "[data-currency-only]" ).each(function(){
    var self = $( this );
    self.mask('#.##0,00', {reverse: true, maxlength: false});
  });

});


function show( code ){
  find_question( code ).removeClass( "hide" );
}

function hide( code ){
  obj = find_question( code );
  // obj.siblings("[class='cf']").addClass("hide");
  obj.addClass( "hide" );
}

function setFocus( code ){
  find_question( code ).find("input").focus();
}

function find_question( code ){
  return $("div[data-question='" + code +  "']");
}