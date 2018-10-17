*idletime-model
roundUpToQuarterHour
	^ self class 
		year: self year
		day: self day
		hour: self hour
		minute: (self minute roundUpTo: 15)
		second: 0.
	