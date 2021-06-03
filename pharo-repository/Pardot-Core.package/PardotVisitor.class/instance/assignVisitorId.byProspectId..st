actions
assignVisitorId: visitorId byProspectId: prospectId
	| responseXML url |
	self ensureLogin.
	url := self resourceUrl / 'assign' / 'id'/ visitorId asString.
	url 
		queryAt:'prospect_id' put: prospectId asString.
	responseXML := self
		client readFromResponse: (self client httpGet: url).
	^ responseXML