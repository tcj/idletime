chronology
currentStatusLength
	^ self lastSpan
		ifNil: [ Timespan starting: (Time now) ending: (Time now)  ]
		ifNotNil: [:span | span timespanOldToNew]