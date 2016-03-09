setCurrentBezirk = ->
  $('#Wien .district-link').each ->
    $(this).toggleClass('current', $(this).attr('xlink:href') == location.hash)

$(window).on 'hashchange', setCurrentBezirk
$ ->
  setCurrentBezirk()
