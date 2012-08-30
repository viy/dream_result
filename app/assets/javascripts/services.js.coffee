# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(".services_accordion").accordion
    event: "mouseover"
    alwaysOpen: false
    navigation: true

  $('#all').unbind('mouseover')
  $('.services_accordion').accordion('activate', 1)