testing
testHttpGet
	| pardotClient  |
	pardotClient := PardotClient new.
	pardotClient authenticate.
	[ pardotClient readFromResponse: (pardotClient httpGet: PardotProspects resourceUrl / 'read' / 'id' / '1'). self assert: false ]
		on: PardotException do: [ :e | self assert: e message equals: 'Invalid prospect ID' ].