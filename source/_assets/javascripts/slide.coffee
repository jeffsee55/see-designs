$ ->
  n = 0
  i = 0
  $('.left').click ->
    if i == 0
      i = 2
      n = 2
    else
      n -= 1
      i = Math.abs(n % 3)
    console.log(i)
    if i == 1
      $(".block-1").animate({
        left: "-150%"
      })
      $(".block-2").animate({
        left: "50%"
      })
      $(".block-3").animate({
        left: "150%"
      })
    else if i == 2
      $(".block-1").animate({
        left: "-250%"
      })
      $(".block-2").animate({
        left: "-150%"
      })
      $(".block-3").animate({
        left: "50%"
      })
    else if i == 0
      $(".block-1").animate({
        left: "50%"
      })
      $(".block-2").animate({
        left: "150%"
      })
      $(".block-3").animate({
        left: "250%"
      })
  $('.right').click ->
    n += 1
    i = Math.abs(n % 3)
    console.log(i)
    if i == 1
      $(".block-1").animate({
        left: "-150%"
      })
      $(".block-2").animate({
        left: "50%"
      })
      $(".block-3").animate({
        left: "150%"
      })
    else if i == 2
      $(".block-1").animate({
        left: "-250%"
      })
      $(".block-2").animate({
        left: "-150%"
      })
      $(".block-3").animate({
        left: "50%"
      })
    else if i == 0
      $(".block-1").animate({
        left: "50%"
      })
      $(".block-2").animate({
        left: "150%"
      })
      $(".block-3").animate({
        left: "250%"
      })
