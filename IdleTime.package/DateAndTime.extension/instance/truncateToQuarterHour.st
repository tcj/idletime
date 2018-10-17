*idletime-model
truncateToQuarterHour
	^ self class 
		year: self year
		day: self day
		hour: self hour
		minute: (self minute truncateTo: 15)
		second: 0.
	