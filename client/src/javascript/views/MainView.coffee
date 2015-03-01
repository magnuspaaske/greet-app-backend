define([
  'backbone'
  'views/LoginView'
], (Backbone, LoginView) ->
  return Backbone.View.extend {

    initialize: () ->
      # Main View
      console.log 'yo'
      this.$el = $('section#maincontent')
      this.elems = {
        login: new LoginView()
      }


    show: (view) ->
      this.$el.children().detach()
      this.elems[view].render()
      this.$el.append this.elems[view].$el

  }
)
