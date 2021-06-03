actions
upsertEmail: email
	| responseXML url |
	self ensureLogin.
	url := self resourceUrl / 'upsert' / 'email'.
	url
		queryAt: 'email' put: email.
	responseXML := self client readFromResponse: (self client httpGet: url).
	^ (responseXML findElementNamed: 'id') contentString