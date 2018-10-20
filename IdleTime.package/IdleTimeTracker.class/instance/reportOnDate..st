reporting
reportOnDate: aDate
	^ IdleTimeDailyReport onDate: aDate fromLogs: (self logsCoveringDate: aDate)