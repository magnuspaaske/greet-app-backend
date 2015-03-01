define([
  'backbone'
], (Backbone) ->
  return Backbone.Model.extend {
    defaults: {
      id: 0
      username: ''
      name: ''
      email: ''
    }

    initialize: () ->


    url: function() {
      return '/api/Users'
    }
  }
})

