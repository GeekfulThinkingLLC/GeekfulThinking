# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$('#phone').on 'change keyup paste', ->
	  output = undefined
	  input = $('#phone').val()
	  input = input.replace(/[^0-9]/g, '')
	  area = input.substr(0, 3)
	  pre = input.substr(3, 3)
	  tel = input.substr(6, 4)
	  if area.length < 3
	    output = '(' + area
	  else if area.length == 3 and pre.length < 3
	    output = '(' + area + ')' + ' ' + pre
	  else if area.length == 3 and pre.length == 3
	    output = '(' + area + ')' + ' ' + pre + '-' + tel
	  $('#phone').val output
	  return