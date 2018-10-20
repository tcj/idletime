reporting
usageAtInterval: anInterval
	| minutes date notReporting usage |
	"we will assume that intervals are all on the same date"
	date := anInterval asDate.
	minutes := anInterval duration asMinutes.
	notReporting := false.
	usage := (self spansDuringTimespan: anInterval) collect: [:span | 
		(span status) -> (span minutesIntersectingWith: anInterval) ].
	^ usage