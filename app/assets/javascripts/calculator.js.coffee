# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
window.futureValue = {
  'a': 20,
  'n': 18,
  'i': 0.03,
}

window.calculateFutureValue = ->
  console.log window.futureValue
  (futureValue['a']*(Math.pow((1+futureValue['i']), futureValue['n'])-1)/futureValue['i'])

