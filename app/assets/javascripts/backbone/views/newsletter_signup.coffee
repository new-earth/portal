
class App.Views.NewsletterSignup extends Backbone.View
  el: "#newsletter_subscribe_form"
  events:
    'click #newsletter_subscribe_btn': 'subscribe'
    'keypress :text': 'onKeypress'

  initialize: ->

  render: ->
    @$el.modal()

  subscribe: (ev)->
    ev.preventDefault()
    $.post '/members/newsletter', @$('form').serialize(), @verify

  verify: (data, status)=>
    errors = data.errors
    if errors.length == 0
      @$('.modal-body').html('<h4 class="h4">Thank you!</h3>')
      setTimeout(=>
        window.location = @$('#newsletter_subscribe_btn').attr('href')
      , 2200)

    else
      @$('.email-error-message').html(errors[0])


  onKeypress: (ev)->
    @$('#newsletter_subscribe_btn').click() if ev.keyCode == 13
