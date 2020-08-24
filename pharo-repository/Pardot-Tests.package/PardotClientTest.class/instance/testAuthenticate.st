testing
testAuthenticate
	| pardotClient pardotLogin responseXML apiKey |
	pardotClient := PardotClient new.
	pardotLogin := PardotLogin new.
	pardotLogin email: pardotClient settings email.
	pardotLogin password: pardotClient settings password.
	pardotLogin userKey: pardotClient settings userKey.
	responseXML := pardotClient
		readFromResponse: (pardotClient httpPost: pardotLogin resourceUrl contents: pardotLogin entity).
	apiKey := (responseXML findElementNamed: 'api_key') contentString.

	self assert: PardotClient new authenticate equals: apiKey.
	self assert: PardotSettings default apiKey equals: apiKey.