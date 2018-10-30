logging spans
addSpanStartingWith: aRecord
	self logStatusChange: aRecord.
	^ spans add: (IdleTimeStatusSpan newFromRecord: aRecord)