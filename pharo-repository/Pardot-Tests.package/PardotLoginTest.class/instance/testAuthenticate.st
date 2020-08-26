testing
testAuthenticate
	| pardotClient entity responseXML apiKey |
	pardotClient := PardotClient new.
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity at: 'email' put: pardotClient settings email.
	entity at: 'password' put: pardotClient settings password.
	entity at: 'user_key' put: pardotClient settings userKey.
	responseXML := pardotClient
		readFromResponse: (pardotClient httpPost: PardotLogin resourceUrl contents: entity).
	apiKey := (responseXML findElementNamed: 'api_key') contentString.

	self assert: PardotLogin new authenticate equals: apiKey.
	self assert: PardotSettings default apiKey equals: apiKey.