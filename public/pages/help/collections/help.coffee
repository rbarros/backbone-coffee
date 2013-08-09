###
Filename: app.js
###
define [
 'jquery'
 'underscore'
 'backbone'
 'cs!pages/help/models/help'
], ($, _, Backbone, helpModel) ->
 class helpCollection extends Backbone.Collection
  model: helpModel
  url: '../rc/help'
  
 new helpCollection