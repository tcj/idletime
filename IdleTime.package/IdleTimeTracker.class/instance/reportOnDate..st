reporting
reportOnDate: aDate
	| noOffset |
	(aDate start offset = DateAndTime localOffset)
		ifFalse: [self error: 'please feed me a Date in machine''s local offset'].

	noOffset := aDate deepCopy stripTimezone.
	
	^ IdleTimeDailyReport onDate: aDate fromLogs: (self logsCoveringDate: aDate)