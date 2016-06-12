setCurrentBezirk = ->
  $('#Wien .district-link').each ->
    $(this).toggleClass('current', $(this).attr('id') == "x" + location.hash.replace(/^#/, ""))

$(window).on 'hashchange', setCurrentBezirk
$ ->
  setCurrentBezirk()
  $("body").on "click", "a[data-lightbox]", (ev) ->
    ev.preventDefault()
    new LighterBox.Image(this)
