
$ ->
  $(this).on('click', "#submit_sov_button", (ev) ->
    ev.preventDefault()
    $("#newsletter_subscribe_form").modal()
  )
