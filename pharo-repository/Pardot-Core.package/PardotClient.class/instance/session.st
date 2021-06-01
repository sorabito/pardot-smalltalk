accessing
session
	^ session ifNil: [ session := self defaultSessionClass new ]