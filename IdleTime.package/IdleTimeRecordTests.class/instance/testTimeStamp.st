testing
testTimeStamp
	| duration |
	duration := (DateAndTime now - 5 minutes) to: (DateAndTime now).
	self assert: [duration includes: record timeStamp ]
	
