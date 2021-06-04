public
authenticate: username password: password
	| parameterDict |
	parameterDict := {
		#username -> username.
		#password -> password.
	} asDictionary.

	self handleAuthenticationCallback: parameterDict.
	^self accessToken 