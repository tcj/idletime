callbacks
logEntry: aDict
	| record |
	record := IdleTimeRecord newFromDictionary: aDict.

	logger logRecord: record.
	tracker handleRecord: record.