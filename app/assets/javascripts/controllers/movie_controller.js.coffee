EmberApp.MovieController = Ember.ObjectController.extend
  isEditing: false

  currentName: (->
    @get("name")
  ).property("model.name")
  currentYear: (->
    @get("year")
  ).property("model.year")
  currentDescription: (->
      @get("description")
  ).property("model.description")

  persist: ->
    @set("name", @get("currentName"))
    @set("year", @get("currentYear"))
    @set("description", @get("currentDescription"))

  reset: ->
    @set("currentName", @get("name"))
    @set("currentYear", @get("year"))
    @set("currentDescription", @get("description"))

  actions:
    # Note: Only put button actions in "actions" section. Don't put computed
    # properties or Observers in this section, but on the same indent level
    # as 'actions'.
    edit: ->
      @set("isEditing", true)
    save: ->
      @persist()
      @set("isEditing", false)
    cancel: ->
      @reset()
      @set("isEditing", false)
