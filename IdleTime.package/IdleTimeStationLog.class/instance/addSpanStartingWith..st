logging spans
addSpanStartingWith: aRecord
	Transcript show: ('{1} woo: {2} -> {3}' format: { Date dateAndTimeNow . aRecord computerName .  aRecord status }); cr.
	^ spans add: (IdleTimeStatusSpan newFromRecord: aRecord)