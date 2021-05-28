actions
authenticate
	| consumerData parameterDict |
	consumerData := ZnOAuth2ConsumerData 
		key: self settings pardotClientId
		secret: self settings pardotClientSecret
		redirectUrl: ''.
	parameterDict := {
		#username -> (self settings salesforceUsername).
		#password -> (self settings salesforcePassword).
	} asDictionary.
	
	session := PardotOAuth2Session new setConsumerData: consumerData.
	session handleAuthenticationCallback: parameterDict.
	self settings accessToken: session accessToken.

	^ session accessToken.