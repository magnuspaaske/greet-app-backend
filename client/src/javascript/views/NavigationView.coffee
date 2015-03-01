define([
  'backbone'
  'jade!/templates/navbar'
], (Backbone, Navbar) ->
  return Backbone.View.extend {

    initialize: () ->
      console.log 'navbar', this.$el
      this.$el = $('section#navbar')
      this.render()

      # window.Jade = Jade

    render: () ->
      this.$el.html Navbar()
  }
)
