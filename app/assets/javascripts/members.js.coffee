window.App ||= {}

class App.NewsletterSignupView extends Backbone.View
  el: "#newsletter_subscribe_form"
  events:
    'click #newsletter_subscribe_btn': 'subscribe'

  initialize: ->

  render: ->
    @$el.modal()

  subscribe: (ev)->
    ev.preventDefault()
    $.post '/members/newsletter', @$('form').serialize(), @verify

  verify: (data, status)=>
    errors = data.errors
    if errors.length == 0
      window.location = @$('#newsletter_subscribe_btn').attr('href')
    else
      @$('.email-error-message').html(errors[0])

