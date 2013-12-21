
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
      console.log 'saved'
      @$('.modal').modal('hide')
      App.Lib.flashSuccess("You have successfully signed the Declaration of Individual Sovereignty.  Congratulations!")
      # scroll to the top
    .fail =>
      # show error message
