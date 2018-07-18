other
logRecord: aRecord
	| lastSpan |
	lastSpan := [spans last] on: Error do: [self addSpanStartingWith: aRecord].
	"still idle?  or gone active?  //   still active?  or gone idle?" 
	(lastSpan status = aRecord status)
		ifTrue: [
			"if same status, just update the last span with the
			newest report:  so we know the station is reporting"
			lastSpan record: aRecord ]
		ifFalse: [ 
			"otherwise, start a new span representing the new status"
			lastSpan conclude.
			self addSpanStartingWith: aRecord ]
