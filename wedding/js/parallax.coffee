---
---
makeParallax = ->
    offset = $(window).scrollTop()
    jQuery('.background').css('background-position-y': -offset / 3)

$(window).scroll(makeParallax)