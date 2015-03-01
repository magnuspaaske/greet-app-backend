define([
  'backbone',
  'require-jade',
], (Backbone, Jade) ->
  return Backbone.View.extend {

    $el: $('section#navbar')

    initialize: () ->
      console.log 'navbar', this.$el
      window.Jade = Jade

    render: () ->


  }
)
