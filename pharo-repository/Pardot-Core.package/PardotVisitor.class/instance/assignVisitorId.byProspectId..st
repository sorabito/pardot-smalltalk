actions
assignVisitorId: visitorId byProspectId: prospectId
	| responseXML url |
	url := self class resourceUrl / 'assign' / 'id'/ visitorId asString.
	url 
		queryAt:'prospect_id' put: prospectId asString.
	responseXML := self
		client readFromResponse: (self client httpGet: url).
	^ responseXML