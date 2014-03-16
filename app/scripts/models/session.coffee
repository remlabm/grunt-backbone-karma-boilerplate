define [
  'underscore'
  'backbone'
], (_, Backbone) ->
  'use strict';

  class SessionModel extends Backbone.Model

    defaults:
      'token': ''
      'ttl': null
      'create': null

