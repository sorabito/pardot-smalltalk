actions
authenticate
	| pardotLogin responseXML apiKey |
	pardotLogin := PardotLogin new.
	pardotLogin email: self settings email.
	pardotLogin password: self settings password.
	pardotLogin userKey: self settings userKey.
	responseXML := self
		client readFromResponse: (self client httpPost: pardotLogin resourceUrl contents: pardotLogin entity).
	apiKey := (responseXML findElementNamed: 'api_key') contentString.
	self settings apiKey: apiKey.
	^ apiKey