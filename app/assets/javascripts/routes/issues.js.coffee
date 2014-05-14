App.IssuesRoute = Ember.Route.extend
  model: ->
    @store.find "issue"

