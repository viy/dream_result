
jQuery ->
  $('.main_carousel_container').carouFredSel
    height: 596
    width:1400
    responsive: true
    items:
      visible: 1
      minimum: 1
    scroll:
      items: 1
      duration: 10000
      fx:"cover"
    pagination: "#main_carousel_pag"

  $("#slider1").carouFredSel
    items:
      visible: 3
      minimum: 3
    scroll:
      items: 3
      duration: 60000
    prev:
      button: "#slider1_prev",
      key: "left"
    next:
      button: "#slider1_next"
      key: "right"
