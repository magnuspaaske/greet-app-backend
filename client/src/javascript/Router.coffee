define([
  'backbone'
  'views/NavigationView'
  'views/MainView'
], (Backbone, NavView, MainView) ->
  return Backbone.Router.extend {
    initialize: (app) ->
      console.log 'yo', app

    routes: {
      'login':          'showLoginView'     # login
      'auth/account':   'showAccountView'   # account
    }

    showLoginView: () ->
      MainView.show 'login'

    showAccountView: () ->

  }
)
