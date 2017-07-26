actions
readEmail: email
	| responseXML url |
	url := self resourceUrl / 'read' / 'email' / email .
	url
		queryAt: 'api_key' put: self settings apiKey;
		queryAt: 'user_key' put: self settings userKey;
		queryAt: 'output' put: self responseFormatType;
		queryAt: 'email' put: email.
	responseXML := self client readFromResponse: (self client httpGet: url).
	^ (responseXML findElementNamed: 'id') contentString