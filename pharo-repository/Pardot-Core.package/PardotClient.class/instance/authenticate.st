actions
authenticate
	| consumerData settings |
	consumerData := ZnOAuth2ConsumerData 
		key: self settings pardotClientId
		secret: self settings pardotClientSecret
		redirectUrl: ''.
	settings := self settings.

	self session setConsumerData: consumerData.
	self session
		authenticate: settings salesforceUsername
		password: settings salesforcePassword.

	settings accessToken: self session accessToken.

	^ self session accessToken.