actions
readEmail: email
	| responseXML url |
	url := self resourceUrl / 'read' / 'email'.
	url
		queryAt: 'output' put: self responseFormatType;
		queryAt: 'email' put: email.
	responseXML := self client readFromResponse: (self client httpGet: url).
	^ (responseXML findElementNamed: 'id') contentString