private
setAuthorizationTo: request
	| authorization |
	authorization := 'Bearer {1}' format: { self settings accessToken }.
	request setAuthorization: authorization.
