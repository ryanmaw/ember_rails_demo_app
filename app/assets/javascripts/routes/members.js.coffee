App.MembersRoute = Ember.Route.extend

	# model is a hook that's called whenever the route is entered
	# This result is then available to the controller, view, and template
	model: -> @store.find 'member'