writing - records
logRecord: aRecord
	"append to old file or create new"
	| logFile |
	logFile := FileStream fileNamed: ffpan.
	logFile setToEnd.
	[ aRecord logOnStream: logFile ] ensure: [ logFile close ].
