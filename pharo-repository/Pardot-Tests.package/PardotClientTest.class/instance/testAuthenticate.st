testing
testAuthenticate
	| pardotClient consumerData parameterDict session accessToken |
	pardotClient := PardotClient new.
	consumerData := ZnOAuth2ConsumerData 
		key: pardotClient settings pardotClientId
		secret: pardotClient settings pardotClientSecret
		redirectUrl: ''.
	parameterDict := {
		#username -> (pardotClient settings salesforceUsername).
		#password -> (pardotClient settings salesforcePassword).
	} asDictionary.
	
	session := PardotOAuth2Session new setConsumerData: consumerData.
	session handleAuthenticationCallback: parameterDict.
	accessToken := session accessToken.

	self assert: PardotClient new authenticate equals: accessToken.
	self assert: PardotSettings default accessToken equals: accessToken.