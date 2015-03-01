require.config({
  paths: {
    'underscore': '../bower_components/underscore/underscore'
    'backbone': '../bower_components/backbone/backbone'
    'jquery': '../bower_components/jquery/dist/jquery'
    'text': '../bower_components/text/text'
    'jquery.cookie': '../bower_components/jquery.cookie/jquery.cookie'
    'parsley': '../lib/parsley/parsley'
    # 'tpl': '../lib/tpl/tpl'
    'require-jade': "../bower_components/require-jade/jade"

  },
  shim: {
    'underscore': {
      exports: '_'
    },
    'backbone': {
      deps: ['underscore', 'jquery']
      exports: 'Backbone'
    },
    'marionette': {
      deps: ['backbone']
      exports: 'Backbone.Marionette'
    },
    'bootstrap': {
      deps: ['jquery']
      exports: 'Bootstrap'
    },
    'parsley': {
      deps: ['jquery']
    },
    'jquery.cookie': {
      deps: ['jquery']
    }
  },
  deps: ['jquery', 'underscore']
});

require([
  'app'
  'backbone'
  'Router'
  'RouterController'
  'jquery.cookie'
], (app, Backbone, Router, RouterController) ->
  console.log 'yo'
  # $.ajaxSetup({
  #   cache: false,
  #   contentType: 'application/json',
  #   dataType: 'json',
  #   headers: {
  #     'Authorization': $.cookie('access_token') || ''
  #   },
  #   statusCode: {
  #     401: () ->
  #       window.location.replace('#/login');
  #   }
  # });

)
