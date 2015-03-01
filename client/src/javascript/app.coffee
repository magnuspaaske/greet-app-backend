define([
  'backbone'
  'views/NavigationView'
  'views/MainView'
  'Router'
], (Backbone, NavigationView, Router) ->

  app = {
    regions: {
      navbar:       new NavigationView()
      maincontent:  '#maincontent'
      footer:       '#footer'
    }
  }

  window.approuter = new Router(app)
  Backbone.history.start {
    pushState: true
  }
  return window.app = app
)
