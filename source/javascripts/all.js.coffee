setCurrentBezirk = ->
  $('#Wien .district-link').each ->
    $(this).toggleClass('current', $(this).attr('id') == "x" + location.hash.replace(/^#/, ""))

$(window).on 'hashchange', setCurrentBezirk
$ ->
  setCurrentBezirk()
