EmberApp.MovieController = Ember.ObjectController.extend
  isEditing: false
  isSuccess: false

  currentName: (->
    @get("name")
  ).property("model.name")
  currentYear: (->
    @get("year")
  ).property("model.year")
  currentDescription: (->
    @get("description")
  ).property("model.description")
  currentImageUrl: (->
    @get("image_url")
  ).property("model.image_url")

  reset: ->
    @set("currentName", @get("name"))
    @set("currentYear", @get("year"))
    @set("currentDescription", @get("description"))
    @set("currentImageUrl", @get("image_url"))

  updateProperties: ->
    @set("name", @get("currentName"))
    @set("year", @get("currentYear"))
    @set("description", @get("currentDescription"))
    @set("image_url", @get("currentImageUrl"))

  showSuccessMessage: ->
    @set("isSuccess", true)

  hideSuccessMessage: ->
    @set("isSuccess", false)

  actions:
    # Note: Only put button actions in "actions" section. Don't put computed
    # properties or Observers in this section, but on the same indent level
    # as 'actions'.
    edit: ->
      @set("isEditing", true)
      @hideSuccessMessage()
    persist: ->
      self = @
      @updateProperties()
      @get('content').save().then(->
        self.showSuccessMessage()
        self.set("isEditing", false)
      ) ->
        self.hideSuccessMessage()
        self.set("isEditing", false)
    cancel: ->
      @reset()
      @hideSuccessMessage()
      @set("isEditing", false)
