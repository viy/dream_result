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
  $('.media-carousel .carousel-container').carouFredSel
    height: 100
    width:390
    items:
      visible: 3
      minimum: 3
    auto:
      duration: 10000
    scroll:
      items: 3
      duration: 1000
    prev:
      button: ".media .arrows .prev"
      key: "left"
    next:
      button: ".media .arrows .next"
      key: "right"
