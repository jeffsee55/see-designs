$ ->
  setBlockHeight = ->
    windowHeight = $(window).height()
    $(".block").height(windowHeight)

  setBlockHeight.call()
  $(window).resize ->
    setBlockHeight.call()
