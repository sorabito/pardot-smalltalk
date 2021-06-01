public
handleAuthenticationCallback: aParameterDictionary 
	| username password url client oauthResponse |
	
	username := aParameterDictionary at: 'username' ifAbsent: [ ^nil ].
	password := aParameterDictionary at: 'password' ifAbsent: [ ^nil ].

	url := (ZnUrl fromString: 'https://login.salesforce.com/services/oauth2/token').
	
	client := (ZnClient new)
		url: url;
		addPart: (ZnMimePart fieldName: 'grant_type' value: 'password');
		addPart: (ZnMimePart fieldName: 'client_id' value: self consumerData key);
		addPart: (ZnMimePart fieldName: 'client_secret' value: self consumerData secret);
		addPart: (ZnMimePart fieldName: 'username' value: username);
		addPart: (ZnMimePart fieldName: 'password' value: password);
		yourself.
	
	oauthResponse := client post.
	
	accessToken := (NeoJSONObject fromString: oauthResponse) at: 'access_token'.