###
Filename: app.js
###
define [
 'jquery'
 'underscore'
 'backbone'
], ($, _, Backbone) ->
 class helpView extends Backbone.View
  events: 'click button': 'addItem'
  el: $ 'body'
  initialize: ->
   #_.bindAll @
   @counter = 0
   require ["cs!pages/help/collections/help"], (c) ->
    console.info(c);
   require ["cs!pages/help/models/help"], (m) ->
    console.info(m);
  render: ->
   $(@el).append '<button>Add List Item</button>'
   $(@el).append '<ul></ul>'
  addItem: ->
   @counter++
   $('ul').append "<li>Hello, Backbone #{@counter}!</li>"
 
 new helpView
