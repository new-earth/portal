
App.Lib.flash = (message, bootstrapClass)->
  flashTemplate = JST['backbone/templates/flash_message']
  $('#flash').append flashTemplate(bootstrap_class: bootstrapClass, message: message)

App.Lib.flashSuccess = (message)->
  App.Lib.flash(message, "alert-success")

App.Lib.flashNotice = (message)->
  App.Lib.flash(message, "alert-info")

App.Lib.flashWarning = (message)->
  # hello