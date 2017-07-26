accessing
responseFormatType
	^ responseFormatType ifNil: [ responseFormatType := 'full' ].