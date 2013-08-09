// Author: Ramon Barros <contato@ramon-barros.com>
// Filename: main.js

// Require.js allows us to configure shortcut alias
// Their usage will become more apparent futher along in the tutorial.
require.config({
  paths: {
    jquery: 'libs/jquery/jquery-1.10.2.min',
    underscore: 'libs/underscore/underscore-min',
    backbone: 'libs/backbone/backbone-min',
    bootstrap:'libs/bootstrap/js/bootstrap.min',
    'coffee-script': 'libs/coffee-script/coffee-script',
    cs: 'libs/require/cs',
    templates: 'templates'
  },
  shim: {
      'backbone':{
        deps: ['jquery','underscore'],
        exports:'Backbone'
      },
      'bootstrap':{
        deps: ['jquery'],
        exports:'Bootstrap'
      },
      'cs':{
        deps: ['coffee-script'],
      }
  }
});

require([
  'cs!app'
], function(App){
  App.initialize();
});
