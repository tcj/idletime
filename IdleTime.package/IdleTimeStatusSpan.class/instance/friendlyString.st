printing
friendlyString
	| span | 
	span := self timespanOldToNew asDuration roundTo: (1 minutes).
	^ self hasRecentReport
		ifTrue: [ span printString, ' [ongoing]'  ]
		ifFalse: [ span printString ]