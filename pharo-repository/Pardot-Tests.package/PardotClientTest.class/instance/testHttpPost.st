testing
testHttpPost
	| pardotClient entity |
	pardotClient := PardotClient new.
	pardotClient authenticate.
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity at: 'id' put: '1'.
	[ pardotClient readFromResponse: (pardotClient httpPost: PardotProspects resourceUrl / 'read' / 'id' contents: entity). self assert: false ]
		on: PardotException do: [ :e | self assert: e message equals: 'Invalid prospect ID' ].