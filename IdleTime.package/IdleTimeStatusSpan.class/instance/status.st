state testing
status

	^ self oldRecord 
		ifNil: [self error: 'empty oldRecord in StatusSpan']
		ifNotNil: [:record | record status]