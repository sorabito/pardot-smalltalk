actions
updateValues: aDictionary at: prospectId 
	| responseXML url |
	url := self resourceUrl / 'update' / 'id' / prospectId.
	aDictionary keysAndValuesDo: [ :key :value |
		url queryAt: key put: value.
	].
	responseXML := self client readFromResponse: (self client httpGet: url).
	^ (responseXML findElementNamed: 'id') contentString