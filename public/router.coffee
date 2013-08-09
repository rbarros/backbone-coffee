###
Filename: router.coffee
###
define [
 'jquery'
 'underscore'
 'backbone'
], ($, _, Backbone) ->

 class AppRouter extends Backbone.Router
  showAction: () ->
   page = arguments[0]
   id = arguments[1]
   console.info page
   require ["cs!pages/#{page}/views/#{page}"], (p) ->
    console.info(p);
    if id then p.render id else p.render()
    
  showDefault: () ->
   console.info this
  _extractParameters: (route, fragment) ->
   params = route.exec fragment
   params.shift()
   params

 initialize = () ->
  window.app_router = new AppRouter
   routes:
    "page/:page": "showAction"
    "*action": "showDefault"

  Backbone.history.start()
  true

 initialize:initialize