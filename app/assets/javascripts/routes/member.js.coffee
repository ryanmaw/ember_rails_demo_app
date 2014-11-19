# Create a route object
App.MemberRoute = Ember.Route.extend

	model: (params) -> @store.find 'member', params.id