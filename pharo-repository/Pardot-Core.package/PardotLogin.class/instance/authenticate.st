actions
authenticate
	| responseXML apiKey |
	self email: self settings email.
	self password: self settings password.
	self userKey: self settings userKey.
	responseXML := self
		client readFromResponse: (self client httpPost: self resourceUrl contents: self entity).
	apiKey := (responseXML findElementNamed: 'api_key') contentString.
	self settings apiKey: apiKey.
	^ apiKey