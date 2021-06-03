http-method
httpGet: aUri
	| cli request |
	cli := self client.
	request := self createRequest.
	request method: #GET.
	self setAuthorizationTo: request.
	self setPardotBuisinessUnitIdTo: request.
	request url: aUri.
	cli request: request.
	cli execute.
	^ cli response.