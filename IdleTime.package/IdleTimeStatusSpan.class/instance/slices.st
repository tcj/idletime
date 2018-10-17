chronology
slices
	^ (self startTime truncateToQuarterHour ) to: (self endTime roundUpToQuarterHour) by: 15 minutes