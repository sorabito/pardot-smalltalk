actions
updateValues: aDictionary at: prospectId 
	| responseXML url |
	url := self resourceUrl / 'update' / 'id' / prospectId.
	url
		queryAt: 'api_key' put: self settings apiKey;
		queryAt: 'user_key' put: self settings userKey.
		aDictionary keysAndValuesDo: [ :key :value |
			url queryAt: key put: value.
		].
	responseXML := self client readFromResponse: (self client httpGet: url).
	^ (responseXML findElementNamed: 'id') contentString