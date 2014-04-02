EmberApp.MoviesNewController = Ember.ObjectController.extend
  name: ""
  year: ""
  description: ""
  image_url: ""
  actions:
    submit: ->
      self = @
      movie = @get("store").createRecord('movie',
        name: self.get("name")
        year: self.get("year")
        description: self.get("description")
        image_url: self.get("image_url")
      )
      this.transitionToRoute("movie", movie)

    cancel: ->
      this.transitionToRoute('movies')
