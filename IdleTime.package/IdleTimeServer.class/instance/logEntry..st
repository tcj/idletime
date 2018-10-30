callbacks
logEntry: aDict
	| record |
	record := IdleTimeRecord newFromDictionary: aDict.

	self keepOwnLog ifTrue: [ IdleTimeServerLogger logRecord: record ].
	tracker handleRecord: record.