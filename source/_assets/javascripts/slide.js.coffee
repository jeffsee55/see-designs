$ ->
  $('.banner').unslider(
    keys: true,
    dots: true,
    delay: 5000,
    fluid: true
  )

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
      $(@).siblings(".block-1").animate({
        left: "-150%"
      })
      $(@).siblings(".block-2").animate({
        left: "50%"
      })
      $(@).siblings(".block-3").animate({
        left: "150%"
      })
    else if i == 2
      $(@).siblings(".block-1").animate({
        left: "-250%"
      })
      $(@).siblings(".block-2").animate({
        left: "-150%"
      })
      $(@).siblings(".block-3").animate({
        left: "50%"
      })
    else if i == 0
      $(@).siblings(".block-1").animate({
        left: "50%"
      })
      $(@).siblings(".block-2").animate({
        left: "150%"
      })
      $(@).siblings(".block-3").animate({
        left: "250%"
      })
  $('.right').click ->
    n += 1
    i = Math.abs(n % 3)
    console.log(i)
    if i == 1
      $(@).siblings(".block-1").animate({
        left: "-150%"
      })
      $(@).siblings(".block-2").animate({
        left: "50%"
      })
      $(@).siblings(".block-3").animate({
        left: "150%"
      })
    else if i == 2
      $(@).siblings(".block-1").animate({
        left: "-250%"
      })
      $(@).siblings(".block-2").animate({
        left: "-150%"
      })
      $(@).siblings(".block-3").animate({
        left: "50%"
      })
    else if i == 0
      $(@).siblings(".block-1").animate({
        left: "50%"
      })
      $(@).siblings(".block-2").animate({
        left: "150%"
      })
      $(@).siblings(".block-3").animate({
        left: "250%"
      })
