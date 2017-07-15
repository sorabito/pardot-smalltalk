actions
authenticate
	| pardotLogin responseXML apiKey |
	pardotLogin := PardotLogin new.
	pardotLogin email: self settings email.
	pardotLogin password: self settings password.
	pardotLogin userKey: self settings userKey.
	responseXML := self
		readFromResponse: (self httpPost: pardotLogin resourceUrl contents: pardotLogin entity).
	apiKey := (responseXML findElementNamed: 'api_key') contentString.
	self settings apiKey: apiKey.
	^ (responseXML findElementNamed: 'api_key') contentString