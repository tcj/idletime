reporting
logsCoveringDate: aDate
	^ self allLogs select: [:log | log datesWithoutOffsets includes: aDate ]