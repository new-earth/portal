
class App.Views.DeclarationForm extends Backbone.View
  template: JST['backbone/templates/declaration_form']

  events:
    'click #submit-btn': 'submit'

  initialize: ->
    @model = App.Vars.currentMember

  render: ->
    @$el.empty()
    @$el.append @template(@model.attributes)
    @$('.modal').modal()
    @$('.has-tooltip').tooltip(html: true)
    @

  submit: ->
    formData = @$('form').serializeJSON()
    @model.set(formData.member)

    @model.save().done =>
      @$('.modal').modal('hide')
      App.Lib.flashSuccess("You have successfully signed the Declaration of Individual Sovereignty.  Congratulations!")
      $('#declaration-button').attr('disabled','disabled').text("Declaration Signed")
      $('html,body').animate({scrollTop: 0}, 450)
    .fail =>
      # show error message
