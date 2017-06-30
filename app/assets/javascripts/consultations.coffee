# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	$('#phone').each ->
	  $(this).on 'change keyup paste', (e) ->
	    output = undefined
	    $this = $(this)
	    input = $this.val()
	    if e.keyCode != 8
	      input = input.replace(/[^0-9]/g, '')
	      area = input.substr(0, 3)
	      pre = input.substr(3, 3)
	      tel = input.substr(6, 4)
	      if area.length < 3
	        output = '(' + area
	      else if area.length == 3 && pre.length < 3
	        output = '(' + area + ')' + ' ' + pre
	      else if area.length == 3 && pre.length == 3
	        output = '(' + area + ')' + ' ' + pre + '-' + tel
	      $this.val output
	    return
	  return