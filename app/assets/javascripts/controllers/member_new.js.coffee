App.MembersNewController = Ember.Controller.extend

	actions:

		createMember: ->
			fields = @get('fields')
			if App.Member.valid(fields)
				member = @store.createRecord 'member', fields
				member.save().then =>
					@transitionToRoute 'member', member
			else
				@set 'showError', true