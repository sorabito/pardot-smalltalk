testing
testInstVar
	| pardotObject |
	pardotObject := PardotObject new.

	self assert: (pardotObject client isKindOf: PardotClient).
	self assert: (pardotObject entity isKindOf: ZnApplicationFormUrlEncodedEntity).
	self assert: pardotObject resourceBaseUrl equals: PardotObject resourceBaseUrl.

	self assert: pardotObject responseFormatType equals: 'full'.
	pardotObject responseFormatType: 'mobile'.
	self assert: pardotObject responseFormatType equals: 'mobile'.
	
	self assert: (pardotObject settings isKindOf: PardotSettings).