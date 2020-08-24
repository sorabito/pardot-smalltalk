testing
testInstVar
	| pardotLogin |
	pardotLogin := PardotLogin new.

	self assert: pardotLogin resourceUrl equals: PardotLogin resourceBaseUrl / 'login' / 'version' / PardotSettings default apiVersion.

	pardotLogin email: pardotLogin settings email.
	self assert: (pardotLogin entity at: 'email') equals: pardotLogin settings email.

	pardotLogin password: pardotLogin settings password.
	self assert: (pardotLogin entity at: 'password') equals: pardotLogin settings password.

	pardotLogin userKey: pardotLogin settings userKey.
	self assert: (pardotLogin entity at: 'user_key') equals: pardotLogin settings userKey.