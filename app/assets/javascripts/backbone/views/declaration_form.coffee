
class App.Views.DeclarationForm extends Backbone.View
  template: JST['backbone/templates/declaration_form']

  initialize: ->

  render: ->

    @$el.empty()
    @$el.append(@template())
    @$('.modal').modal()
    @
