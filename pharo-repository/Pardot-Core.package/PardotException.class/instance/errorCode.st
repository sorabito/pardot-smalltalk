accessing
errorCode
	"Pardot Error Codes & Message
	http://developer.pardot.com/kb/error-codes-messages/"
	^ (self properties findElementNamed: 'err') attributeAt:'code'.