# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

scrollToID = (id, speed) ->
  offSet = 50
  targetOffset = $(id).offset().top - offSet
  mainNav = $("#main-nav")
  $("html,body").animate
    scrollTop: targetOffset
  , speed
  if mainNav.hasClass("open")
    mainNav.css("height", "1px").removeClass("in").addClass "collapse"
    mainNav.removeClass "open"
$(document).ready ->
  $(".scroll-link").on "click", (event) ->
    event.preventDefault()
    sectionID = $(this).attr("data-id")
    scrollToID "#" + sectionID, 750

  $(".scroll-top").on "click", (event) ->
    event.preventDefault()
    $("html, body").animate
      scrollTop: 0
    , "slow"

  $("#nav-toggle").on "click", (event) ->
    event.preventDefault()
    $("#main-nav").toggleClass "open"


# console = log: ->  if typeof console is "undefined"