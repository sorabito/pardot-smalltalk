actions
authenticate
	| consumerData settings token |
	consumerData := ZnOAuth2ConsumerData 
		key: self settings pardotClientId
		secret: self settings pardotClientSecret
		redirectUrl: ''.
	settings := self settings.

	self session setConsumerData: consumerData.
	token := self session
		authenticate: settings salesforceUsername
		password: settings salesforcePassword.

	token ifNotNil: [settings accessToken: token].

	^ token