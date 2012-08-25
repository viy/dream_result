
jQuery ->
  $('.main_carousel_container').carouFredSel
    items:
      visible: 1
      minimum: 1
    scroll:
      items: 1
      duration: 1000
      fx:"cover"
    prev:
      button: "#main_carousel_prev",
    next:
      button: "#main_carousel_next"
    pagination: "#main_carousel_pag"

  $("#slider1").carouFredSel
    items:
      visible: 3
      minimum: 3
    scroll:
      items: 1
    prev:
      button: "#slider1_prev",
      key: "left"
    next:
      button: "#slider1_next"
      key: "right"
