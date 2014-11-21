# For more information see: http://emberjs.com/guides/routing/


App.Router.reopen
	rootURL: '/'
	location: 'auto'

App.Router.map ->
	@resource 'members', path: '/', ->
		@route 'new'
		@resource 'member', path: 'member/:id', ->
			
			# This route looks for the MemberEdit controller, view, and template
			# @route 'index' implicitly provided

			@route 'edit'

