define [
  'underscore'
  'backbone'
  'models/event'
], (_, Backbone, EventsModel) ->

  class EventsCollection extends Backbone.Collection
    model: EventsModel
    url: 'scripts/fixtures/events.json'