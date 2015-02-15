$ ->
  unblur = (item) ->
    windowHeight = $(window).height()
    center = windowHeight / 1.5
    offset = item.offset()
    scrollTop     = $(window).scrollTop()
    elementOffset = item.offset().top
    distance      = (elementOffset - scrollTop)
    if distance < center
      item.addClass("unblur")
    if distance > center
      item.removeClass("unblur")

  $(window).scroll ->
    $(".blur").each ->
      unblur($(@))
