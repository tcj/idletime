writing - dictionaries
logEntry: aDict
	| logFile |
	self halt: 'should not be sent'.
	logFile := FileStream fileNamed: ffpan.
	[ self writeLogEntry: aDict onStream: logFile ] ensure: [ logFile close ].