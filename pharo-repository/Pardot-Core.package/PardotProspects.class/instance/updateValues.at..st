actions
updateValues: aDictionary at: prospectId 
	| responseXML url |
	self ensureLogin.
	url := self resourceUrl / 'update' / 'id' / prospectId.
	aDictionary keysAndValuesDo: [ :key :value |
		url queryAt: key put: value.
	].
	responseXML := self client readFromResponse: (self client httpGet: url).
	^ (responseXML findElementNamed: 'id') contentString