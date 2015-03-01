define([
  'backbone'
  'jade!/templates/login'
], (Backbone, Login) ->
  return Backbone.View.extend {

    initialize: () ->
      console.log 'Loginview'
      this.$el = $('<div></div>')

    render: () ->
      this.$el.html Login()

  }
)
