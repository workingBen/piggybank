# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
window.futureValue = {
  'a': 100,
  'n': 18,
  'i': 0.03,
}

window.calculateFutureValue = ->
  console.log window.futureValue
  (futureValue['a']*(Math.pow((1+futureValue['i']), futureValue['n'])-1)/futureValue['i'])

$ ->
  $("#sliderA").slider({
    value:100,
    min: 0,
    max: 2000,
    step: 20,
    slide: ( event, ui ) ->
      $( "#amountA" ).val( "$" + ui.value )
  })

  $( "#amountA" ).val( "$" + $( "#sliderA" ).slider( "value" ) );

  $("#sliderN").slider({
    value:16,
    min: 0,
    max: 20,
    step: 1,
    slide: ( event, ui ) ->
      $( "#amountN" ).val( ui.value + " years" )
  })

  $( "#amountN" ).val( $( "#sliderN" ).slider( "value" ) + " years" );
