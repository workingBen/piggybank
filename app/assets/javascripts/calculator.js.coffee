# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
window.futureValue = {
  'a': 100,
  'n': 16,
  'i': 0.03,
}

@calculateFutureValue = ->
  fv = (futureValue['a']*12*(Math.pow((1+futureValue['i']), futureValue['n'])-1)/futureValue['i'])
  principle = futureValue['a']*12*futureValue['n']
  totalInterest = fv - principle
  percentInterest = ((fv - principle) / principle)*100
  $( "#principle" ).text( "$" + principle)
  $( "#futureValue" ).text( "$" + fv.toFixed(2))
  $( "#totalInterest" ).text( "$" + totalInterest.toFixed(2))
  $( "#percentInterest" ).text( percentInterest.toFixed(2) + "%" )
  console.log window.futureValue

$ ->
  $("#sliderA").slider({
    value:100,
    min: 0,
    max: 2000,
    step: 20,
    slide: ( event, ui ) =>
      $( "#amountA" ).val( "$" + ui.value )
      window.futureValue['a'] = ui.value
      calculateFutureValue()
  })

  $( "#amountA" ).val( "$" + $( "#sliderA" ).slider( "value" ) )

  $("#sliderN").slider({
    value:16,
    min: 0,
    max: 20,
    step: 1,
    slide: ( event, ui ) =>
      $( "#amountN" ).val( ui.value + " years" )
      window.futureValue['n'] = ui.value
      calculateFutureValue()
  })

  $( "#amountN" ).val( $( "#sliderN" ).slider( "value" ) + " years" )

  calculateFutureValue()
