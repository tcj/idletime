*idletime-model
roundToQuarterHour
	^ self class 
		year: self year
		day: self day
		hour: self hour
		minute: (self minute roundTo: 15)
		second: 0.
	