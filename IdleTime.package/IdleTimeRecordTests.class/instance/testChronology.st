testing
testChronology
	self assert: [record happenedRecently].
	self deny: [record happenedLongAgo ].