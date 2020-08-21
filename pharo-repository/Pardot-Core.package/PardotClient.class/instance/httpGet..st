http-method
httpGet: aUri
	| request |
	request := self createRequest.
	request method: #GET.
	aUri ~= (PardotLogin resourceUrl) ifTrue: [ self setAuthorizationTo: request ].
	request url: aUri.
	self client request: request.
	client execute.
	^ client response.