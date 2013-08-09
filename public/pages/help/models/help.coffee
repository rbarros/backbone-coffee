###
Filename: app.js
###
define [
 'jquery'
 'underscore'
 'backbone'
], ($, _, Backbone) ->
 class helpModel extends Backbone.Model
  urlRoot: "../src/login"
  defaults:
   id: null
   name: null
  initialize: () ->
 
 new helpModel