App.IssuesController = Ember.ArrayController.extend(actions:
  view: ->
    alert "VIEW!!"
  edit: ->
    alert "EDIT!!"
    #@transitionToRoute "user.edit"
    #return
)
