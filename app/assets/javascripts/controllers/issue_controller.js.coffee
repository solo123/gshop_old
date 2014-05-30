App.IssuesController = Ember.ArrayController.extend(
  newIssue: ""
  actions:
    view: ->
      alert "VIEW!!"
    edit: ->
       @transitionToRoute('issue.edit')
    createIssue: ->
      info = @get('newIssue')
      return unless info.trim()

      issue = @store.createRecord('issue', 
        title: info
        description: info
      )

      @set('newIssue', '');

      issue.save();
    #return unless info.trim()
    #@transitionToRoute "user.edit"
    #return
)
