EmberApp.EmdbController = Ember.Controller.extend
  query: ''
  actors: (->
    self = @
    if self.query.length > 2
      @store.find('actor', {
        query: self.query
      })
  ).property("query")

  movies: (->
    self = @
    if self.query.length > 2
      @store.find('movie', {
        query: self.query
      })
  ).property("query")
