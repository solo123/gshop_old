App.ApplicationRoute = Ember.Route.extend
  model: ->
    @store.find "issue"

  events:
    openModal: (modalName) ->
      return @render modalName,
        into: "application"
        outlet: "modal"

    closeModal: ->
      App.animateModalClose().then (->
        @render "empty",
          into: "application"
          outlet: "modal"
      ).bind(this)

App.IssuesRoute = Em.Route.extend
  model: ->
    @store.find "issue"
  events: 
    edit: ->
      @controllerFor('widgets.modal').edit widget
      @send 'openModal', 'widgets.modal'
