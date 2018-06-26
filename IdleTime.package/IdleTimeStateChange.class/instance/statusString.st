state testing
statusString
	^ self status 
		ifNil: [ self state asString ]
		ifNotNil: [:ex | ex statusString]