define [
  'jquery'
  'underscore'
  'backbone'
  'templates'
  'moment'
], ($, _, Backbone, JST, moment) ->
  class EventDetailsView extends Backbone.View
    template: JST['app/scripts/templates/event-details.ejs']

    render: ->
      this.$el.html( this.template( this.model.attributes ))