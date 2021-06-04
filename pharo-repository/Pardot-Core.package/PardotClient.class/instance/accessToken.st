accessing
accessToken
	| token |
	token := self session accessToken ifNil: [  self settings accessToken ].
	^ token ifNil: [ self authenticate ]