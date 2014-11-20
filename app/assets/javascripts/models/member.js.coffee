App.Member = DS.Model.extend
	# firstName: DS.attr('string')
	# lastName: DS.attr('string')
	# email: DS.attr('string')
	# phone: DS.attr('string')
	# status: DS.attr('string', defaultValue: 'new')
	# notes: DS.attr('string')

	firstName: DS.attr 'string'
	lastName:  DS.attr 'string'
	email:     DS.attr 'string'
	phone:     DS.attr 'string'
	status:    DS.attr 'string', defaultValue: 'New'
	notes:     DS.attr 'string'

	# Property for displaying full names of members
	fullName: ( ->
		@get('firstName') + ' ' + @get('lastName')
		).property('firstName', 'lastName')

App.Member.reopenClass
	STATUSES: ['New', 'Closed', 'Good', 'Bad']
