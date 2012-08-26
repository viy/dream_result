
jQuery ->
  $('.main_carousel_container').carouFredSel
    height: 596
    width:1464
    items:
      visible: 1
      minimum: 1
    scroll:
      items: 1
      duration: 1000
      fx:"cover"
    auto:
      duration: 10000
    pagination: "#main_carousel_pag"

  $("#slider1").carouFredSel
    items:
      visible: 3
      minimum: 3
    auto:
      duration: 10000
    scroll:
      items: 3
      duration: 1000
    prev:
      button: "#slider1_prev",
      key: "left"
    next:
      button: "#slider1_next"
      key: "right"
