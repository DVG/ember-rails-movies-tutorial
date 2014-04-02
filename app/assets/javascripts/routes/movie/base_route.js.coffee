# For more information see: http://emberjs.com/guides/routing/

EmberApp.MovieBaseRoute = Ember.Route.extend
  model: (params) ->
    @modelFor('movie')
