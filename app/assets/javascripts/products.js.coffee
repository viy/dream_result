jQuery ->
  $(".product-content .items_content .item").on "click", ->
    window.location.href = $(@).data("href")