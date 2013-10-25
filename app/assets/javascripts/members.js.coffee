# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(this).on('click', "#submit_sov_button", (event) ->
    $("#newsletter_subscribe_form").show('slow')
    event.preventDefault()
    return false
  )
