# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource 'issues' 

  @resource 'issues', ->
    @route 'edit'

