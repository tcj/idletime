reporting
logsCoveringDate: aDate

	^ self allLogs select: [:log | log dates includes: aDate ]