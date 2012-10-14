jQuery ->
  $(".reason-boxes .reason").mouseenter ->
    $(this).toggleClass('blue' + $(this).attr("data_id"))
    $(this).toggleClass('blue')
  .mouseleave ->
    $(this).toggleClass('blue' + $(this).attr("data_id"))
    $(this).toggleClass('blue')
  .click ->
      window.location.replace( $(this).attr("data_href") )
