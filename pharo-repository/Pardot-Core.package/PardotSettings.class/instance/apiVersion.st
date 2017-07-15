accessing
apiVersion
	^ self at: #apiVersion ifAbsentPut: ['4']