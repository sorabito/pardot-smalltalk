accessing
settings
	^ settings ifNil: [settings := PardotSettings default]