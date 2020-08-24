testing
testInstVar
	| pardotClient |
	pardotClient := PardotClient new.

	self assert: (pardotClient client isKindOf: ZnClient).
	self assert: pardotClient client isOneShot.
	
	self assert: (pardotClient settings isKindOf: PardotSettings).