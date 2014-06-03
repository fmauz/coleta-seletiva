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
//= require utils
//= require bootstrap
//= require jquery.validate.min
//= require jquery.mask.min
//= require bootstrap-fileupload
//= require chromoselector.demo.min

/*
# =============================================================================
#   File upload buttons
# =============================================================================
*/
$(function(){
  $('.fileupload').fileupload();

  $('.color').chromoselector()
});

var SaoPauloCelphoneMask = function(phone, e, currentField, options){
  return phone.match(/^(\(?11\)? ?9(5[0-9]|6[0-9]|7[01234569]|8[0-9]|9[0-9])[0-9]{1})/g) ? '(00) 00000-0000' : '(00) 0000-0000';
};

function remove_fields(link) {
  $(link).siblings("input[type=hidden]").val("true");
  $(link).parents(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  var cf = $( link ).parents(".cf");
  if( cf.length <= 0 )
    cf = $( link );

  cf.prevAll("#" + association).append( content.replace(regexp, new_id) );

  setMasks( cf.prevAll("#" + association) );
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
    var tabContent = $( self.parents( ".container" ).find(".tab-content") );
    var itemActive = tabContent.find(".tab-pane.active");
    var tabPanel = itemActive.prev(".tab-pane");
    itemActive.removeClass("active");
    tabPanel.addClass("active");
    self.parents( ".container" ).find("a.nextTab").removeClass("disabled");

    if( tabPanel.prev(".tab-pane").length == 0 )
      self.addClass("disabled");

    if( tabPanel.next(".tab-pane").length == 0 )
      self.addClass("disabled");


    if ( tabPanel.attr("id") == "dates" ) {
      verifyDates("prevTab")
    }else{
      onTabEvents({ target: tabPanel });
    }

    self.trigger("shown.bs.tab", { target: tabPanel } );
  })

  $("a.nextTab").click(function(evt){
    evt.preventDefault();

    var self = $(this);
    var tabContent = self.parents( ".container" ).find(".tab-content");
    var itemActive = tabContent.find(".tab-pane.active");
    var tabPanel = itemActive.next(".tab-pane");
    itemActive.removeClass("active");
    tabPanel.addClass("active");
    self.parents( ".container" ).find("a.prevTab").removeClass("disabled");

    if( tabPanel.next(".tab-pane").length == 0 )
      self.addClass("disabled")

    $("#message_card, #message_btn").addClass("hide");
    self.trigger("shown.bs.tab", { target: tabPanel } );
    onTabEvents({ target: tabPanel });

    if ( tabPanel.attr("id") == "dates"){
      verifyDates("nextTab")
    }

    $("body").scrollTop(0);
  });

  setMasks( document );
});

function setMasks( object ){
  // console.log( object );
  
  $(object).find( "[data-number-only]" ).each(function(){
    var self = $(this);
    var format = self.data( "mask-format" ).toString();
    self.mask( format ), {reverse: true, maxlength: false}
  });

  $(object).find( "[data-currency-only]" ).each(function(){
    var self = $( this );
    self.mask('#.##0,00', {reverse: true, maxlength: false});
  });

  $(object).find( "[data-cpf-only]" ).each(function(){
    var self = $( this );
    self.mask('000.000.000-00', {reverse: true});
  });

  $(object).find( "[data-cnpj-only]" ).each(function(){
    var self = $( this );
    self.mask('00.000.000/0000-00', {reverse: true});
  });

  $(object).find( "[data-cep-only]" ).each(function(){
    var self = $( this );
    self.mask('00000-000', {reverse: true});
  });

  $(object).find( "[data-telefone-only]" ).each(function(){
    var self = $( this );
    self.mask('(00) 00009-0000');
  });

  $(object).find( "[data-porcentagem-only]" ).each(function(){
    var self = $( this );
    self.mask('##0,00%', {reverse: true});
  });

  $(object).find( "[data-kilos-only]" ).each(function(){
    var self = $( this );
    self.mask('########0,000', {reverse: true});
  });

  $(object).find( "[data-shortdate-only]" ).each(function(){
    var self = $( this );
    self.mask('99/9999' );
  });
}

function verifyDates(obj){
  if( $("[data-survey='" + $(".survey_field").val() + "']").data("month") != true ){
      $("."+obj).trigger("click");
  }
}

function onTabEvents(obj){
  var $form = obj.target.parents( ".container" ).find("form");
  if( obj.target.attr("id") == "form_section"){

    $.ajax({
      url: obj.target.data("url") ,
      data: $form.serialize(),
      method: "get",
      type: "html",
      success: function( content ){
        obj.target.find("#content").html( content );
      }
    })

  } else if( obj.target.attr("id") == "instrumentos"){
    $.ajax({
      url: obj.target.data("url"),
      data: $form.serialize(),
      method: "get",
      type: "json",
      success: function( object ){
        if( object.error ){
          $("#message_card").removeClass("hide").html( object.message );
        }else{
          $("#message_btn").removeClass("hide");
        }
      }
    })
  }
}

function show( code ){
  find_question( code ).removeClass( "hide" );
}

function hide( code ){
  obj = find_question( code );
  // obj.siblings("[class='cf']").addClass("hide");
  obj.addClass( "hide" );
}

function setFocus( code ){
  find_question( code ).find("input[type!='hidden']:first").focus();
}

function find_question( code ){
  return $("div[data-question='" + code +  "']");
}

$(function(){
  $("[data-save-add-other]").click(function(){
    var $button = $( this ),
        $input = $("<input type='hidden' name='add_new' value='true' />");

    $button.parents( "form" ).append( $input );
  })
});
