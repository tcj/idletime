as yet unclassified
testSpanDates
	self assert: (span1 dates size = 1).
	self assert: (span1 datesWithoutOffsets first = Date today).
	self assert: (span1 startedOnDate: Date today).