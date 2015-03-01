define([
  'backbone'
  'views/NavigationView'
], (Backbone, NavigationView) ->

  app = {
    regions: {
      navbar:       new NavigationView()
      maincontent:  '#maincontent'
      footer:       '#footer'
    }
  }

  return window.app = app
)
