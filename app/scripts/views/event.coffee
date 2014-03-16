define [
  'jquery'
  'underscore'
  'backbone'
  'templates'
], ($, _, Backbone, JST) ->
  class EventView extends Backbone.View
    tagName: 'a'
    className: 'event list-group-item'
    template: JST['app/scripts/templates/event.ejs']

    initialize : ->
      this.listenTo( this.model, 'change', this.render)

    render: ->
      this.$el
        .attr('id', this.model.get('_id') )
        .html( this.template( this.model.attributes ))


