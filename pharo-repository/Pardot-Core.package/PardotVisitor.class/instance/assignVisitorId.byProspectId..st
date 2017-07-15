actions
assignVisitorId: visitorId byProspectId: prospectId
	| responseXML url |
	url := self resourceUrl / 'assign' / 'id'/ visitorId asString.
	url 
		queryAt:'prospect_id' put: prospectId asString;
		queryAt:'api_key' put: self settings apiKey;
		queryAt:'user_key' put: self settings userKey.
	responseXML := self
		client readFromResponse: (self client httpGet: url).
	^ responseXML