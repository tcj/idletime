as yet unclassified
testSpan2
	span2 inspect.
	self assert: (span2 datesWithoutOffsets includes: (Date year: 2018 month: 8 day: 16)).
	self assert: span2 statusLength > 15 minutes.