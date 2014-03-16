#/*global require*/
'use strict'

require.config
  shim:
    baseUrl: '/scripts'
    underscore:
      exports: '_'
    backbone:
      deps: [
        'underscore'
        'jquery'
      ]
      exports: 'Backbone'
    bootstrap:
      deps: ['jquery'],
      exports: 'jquery'
  paths:
    jquery: '../bower_components/jquery/jquery'
    underscore: '../bower_components/underscore/underscore'
    backbone: '../bower_components/backbone/backbone'
    backboneRelational: '../bower_components/backbone-relational/backbone-relational'
    bootstrap: '../bower_components/sass-bootstrap/dist/js/bootstrap'
    moment: '../bower_components/moment/moment'

require [
  'backbone'
  'collections/events'
  'views/events'
  'models/session'

], (Backbone, EventsCollection, EventsView, SessionModel ) ->

  Session = new SessionModel { "token" : "5f4e1127be880abc1fabbbd59360c3a4"}

  $.ajaxSetup {
    beforeSend : ( xhr )->
      xhr.setRequestHeader('Auth-Token', Session.get 'token' )
  }
  Backbone.history.start()

  view = new EventsView { collection: new EventsCollection() }

  $('#content').html( view.el )