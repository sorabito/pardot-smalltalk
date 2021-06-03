actions
ensureLogin
	self client isAuthenticated ifFalse: [ self login ]