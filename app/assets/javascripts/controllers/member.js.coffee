App.MemberController = Ember.ObjectController.extend



	actions:
		saveChanges: -> @get('model').save()


	showUnsavedMessage: ( ->
	    @get('isDirty') and !@get('isSaving')
	  ).property('isDirty', 'isSaving')



