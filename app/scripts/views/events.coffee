define [
  'jquery'
  'underscore'
  'backbone'
  'templates'
  'views/event'
  'views/event-details'
], ($, _, Backbone, JST, EventView, EventDetailsView) ->
  class EventsView extends Backbone.View

    template: JST['app/scripts/templates/events.ejs']

    events:
      'click a.event': 'showEventDetails'

    initialize: ->
      this.render()

      this.listenTo( this.collection, 'add', this.addEventItem )

      this.collection.fetch()

    render: ->
      this.$el.html this.template()


    addEventItem: (event)->
      view = new EventView( { model: event })
      this.$('#events-list').append( view.render() )

    showEventDetails: (event)->
      this.$('a.event').removeClass('active')
      this.$( '#'+event.target.id ).addClass('active')

      view = new EventDetailsView( { model: this.collection.get( event.target.id ) })
      this.$('#event-details').html( view.render() )
