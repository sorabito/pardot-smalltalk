http-method
httpGet: aUri
	| request |
	request := self createRequest.
	request method: #GET.
	aUri ~= (PardotLogin new resourceUrl) ifTrue: [ self setAuthorizationTo: request ].
	request url: aUri.
	self client beBinary request: request.
	client execute.
	^ client response.