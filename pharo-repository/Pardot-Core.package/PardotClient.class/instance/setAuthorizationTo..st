private
setAuthorizationTo: request
	| bearerAuthorizationHeader |
	bearerAuthorizationHeader := 'Bearer {1}' format: { self accessToken }.
	request setAuthorization: bearerAuthorizationHeader.
