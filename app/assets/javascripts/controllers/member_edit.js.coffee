App.MemberEditController = Ember.ObjectController.extend

	actions:

		saveChanges: -> 
			# Once our promise to save is resolved by the server, then redirect back to member
			@get('model').save().then =>
				@transitionToRoute 'member'

		cancel: -> 
			@get('model').rollback()
			@transitionToRoute 'member'