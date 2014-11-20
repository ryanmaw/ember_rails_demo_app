# For more information see: http://emberjs.com/guides/routing/


App.Router.reopen
	rootURL: '/'
	location: 'auto'

App.Router.map ->
	@resource 'members', path: '/', ->
		@resource 'member', path: '/members/:id/:firstName'
