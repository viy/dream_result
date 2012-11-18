# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  if $(".service-items").length
    $(".service-items").bind "show", (e)->

      pattern = /#.+/gi
      contentId = e.target.toString().match(pattern)[0]
      baseUrl = $(contentId).data("url")
      $.getScript baseUrl



  if $(".services_accordion").length
    $(".services_accordion").accordion
      event: "mouseover"
      alwaysOpen: false
      navigation: true
    $('.services_accordion').accordion('activate', $('.services_accordion').data("active"))

  $('#all').unbind('mouseover')
  if $('.media-carousel .carousel-container').length
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
