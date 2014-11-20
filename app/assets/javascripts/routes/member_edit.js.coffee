App.MemberEditRoute = Ember.Route.extend

	activate: 		-> @controllerFor('member').set 'isEditing', true
	deactivate: 	-> @controllerFor('member').set 'isEditing', false