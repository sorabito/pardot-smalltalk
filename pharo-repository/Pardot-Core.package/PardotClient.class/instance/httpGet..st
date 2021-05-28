http-method
httpGet: aUri
	| request |
	request := self createRequest.
	request method: #GET.
	self setAuthorizationTo: request.
	self setPardotBuisinessUnitIdTo: request.
	request url: aUri.
	self client request: request.
	client execute.
	^ client response.