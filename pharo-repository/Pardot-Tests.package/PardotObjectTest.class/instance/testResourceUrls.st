testing
testResourceUrls
	self assert: PardotObject resourceBaseUrl equals: PardotResourceUrl baseUrl / 'api'.

	"check resourceUrl methods of subclasses"
	self assert: PardotLogin resourceUrl equals: PardotObject resourceBaseUrl / 'login' / 'version' / PardotSettings default apiVersion.
	self assert: PardotLogin new resourceUrl equals: PardotObject resourceBaseUrl / 'login' / 'version' / PardotSettings default apiVersion.

	self assert: PardotProspects resourceUrl equals: PardotObject resourceBaseUrl / 'prospect' / 'version' / PardotSettings default apiVersion / 'do'.
	self assert: PardotProspects new resourceUrl equals: PardotObject resourceBaseUrl / 'prospect' / 'version' / PardotSettings default apiVersion / 'do'.

	self assert: PardotVisitor resourceUrl equals: PardotObject resourceBaseUrl / 'visitor' / 'version' / PardotSettings default apiVersion / 'do'.
	self assert: PardotVisitor new resourceUrl equals: PardotObject resourceBaseUrl / 'visitor' / 'version' / PardotSettings default apiVersion / 'do'.