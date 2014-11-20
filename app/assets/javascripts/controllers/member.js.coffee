App.MemberController = Ember.ObjectController.extend

	isEditing: false

	actions:
		saveChanges: -> @get('model').save()


	showUnsavedMessage: ( ->
	    @get('isDirty') and !@get('isSaving')
	  ).property('isDirty', 'isSaving')
