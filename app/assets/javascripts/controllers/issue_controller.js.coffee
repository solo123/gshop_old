App.IssuesController = Ember.ArrayController.extend(actions:
  view: ->
    alert "VIEW!!"
  edit: ->
    alert "EDIT!!"
  createIssue: ->
    info = @get('newIssue')
    alert(info)
    #return unless info.trim()
    #@transitionToRoute "user.edit"
    #return
)
