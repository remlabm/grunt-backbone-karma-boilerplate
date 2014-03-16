define [
  'underscore'
  'backbone'
], (_, Backbone) ->
  'use strict';

  class EventModel extends Backbone.Model
    url: 'event'
    idAttribute: "_id"

    defaults:
      _id: ''
      name: ''
