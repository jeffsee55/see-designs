$ ->
  $('.nav span').click ->
    $(@).fadeOut()
    $('.menu').fadeIn()
  $('.nav .exit').click ->
    $('.menu').fadeOut()
    $('.nav span').fadeIn()
  $('.nav .menu li a').click ->
    $('.menu').fadeOut()
    $('.nav span').fadeIn()
    $("html, body").animate
      scrollTop: $($.attr(this, "href")).offset().top
    , 700
    false
