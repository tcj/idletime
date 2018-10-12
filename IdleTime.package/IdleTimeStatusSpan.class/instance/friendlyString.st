printing
friendlyString
	| span | 
	span := self statusMinutes.
	^ self hasRecentReport
		ifTrue: [ span printString, ' [ongoing]'  ]
		ifFalse: [ span printString ]