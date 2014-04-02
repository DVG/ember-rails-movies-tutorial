EmberApp.CaseShowRoute = Ember.Route.extend
  model: (params) ->
    console.log "Fetching movies loaded in 'movie' route"
    @modelFor('actor')
