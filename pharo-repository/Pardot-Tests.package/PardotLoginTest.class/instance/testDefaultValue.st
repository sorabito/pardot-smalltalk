testing
testDefaultValue
	| pardotObject |
	pardotObject := PardotObject new.
	self assert: pardotObject defaultClient equals: PardotClient.
