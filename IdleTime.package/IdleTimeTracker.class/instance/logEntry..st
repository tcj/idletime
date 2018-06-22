recording
logEntry: aDict
"	| logFile |
	logFile := FileStream fileNamed: ffpan.
	[ self writeLogEntry: aDict onStream: logFile ] ensure: [ logFile close ]."