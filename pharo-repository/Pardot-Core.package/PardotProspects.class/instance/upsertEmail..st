actions
upsertEmail: email
	| responseXML url |
	url := self class resourceUrl / 'upsert' / 'email'.
	url
		queryAt: 'email' put: email.
	responseXML := self client readFromResponse: (self client httpGet: url).
	^ (responseXML findElementNamed: 'id') contentString