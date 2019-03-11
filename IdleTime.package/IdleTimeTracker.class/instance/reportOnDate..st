reporting
reportOnDate: aDate
	(aDate start offset = 0 minutes)
		ifFalse: [self error: 'please feed me a Date with no timezone offset'].

	^ IdleTimeDailyReport onDate: aDate fromLogs: (self logsCoveringDate: aDate)