define([
  'backbone'
  'views/NavigationView'
], (Backbone) ->
  return Backbone.Router.extend {
    routes: {
      'login':          'showLoginView'     # login
      'auth/account':   'showAccountView'   # account
    }

    showLoginView: () ->


    showAccountView: () ->
  }
)
