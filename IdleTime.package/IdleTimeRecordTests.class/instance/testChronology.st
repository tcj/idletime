testing
testChronology
	self assert: ( record happenedRecently ).
	self deny: ( record happenedLongAgo ).
	
	self deny: ( fromString happenedRecently ).
	self assert: ( fromString happenedLongAgo )
	