testing
testTimeStamp
	| duration |
	duration := (DateAndTime now - 5 minutes) to: (DateAndTime now + 1 milliSecond).
	self assert: [duration includes: record timeStamp ]
	
