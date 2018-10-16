callbacks
logEntry: aDict
	| record |
	record := IdleTimeRecord newFromDictionary: aDict.

	self keepOwnLog ifTrue: [ logger logRecord: record ].
	tracker handleRecord: record.