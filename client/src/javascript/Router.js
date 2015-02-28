define([
  'backbone'
], function (Backbone) {
  'use strict';

  return Backbone.Router.extend({
    routes: {
      'login': 'showLoginView',
      'about': 'showAboutView',
      '*filter': 'setTodosFilter'
    }
  });
});
