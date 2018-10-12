logging spans
addSpanStartingWith: aRecord
	Transcript show: 'woo: ', aRecord computerName, ' -> ', aRecord status; cr.
	^ spans add: (IdleTimeStatusSpan newFromRecord: aRecord)