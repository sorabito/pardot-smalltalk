private
setAuthorizationTo: request
	| authorization |
	authorization := 'Pardot api_key={1}, user_key={2}' format: { self settings apiKey. self settings userKey }.
	request setAuthorization: authorization.
