other
lastStatus
	^ self lastSpan
		ifNil: [ IdleTimeUnknownStatus  ]
		ifNotNil: [:span | span status]