EmberApp.AppearancesRoute = Ember.Route.extend
  model: (params) ->
    @modelFor('actor').get("appearances")
