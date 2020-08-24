testing
testDefaultValue
	| pardotClient |
	pardotClient := PardotClient new.

	self assert: pardotClient defaultClient equals: ZnClient.
	self assert: pardotClient defaultResponseClass equals: PardotResponse.