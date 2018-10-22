reporting
usageAtInterval: anInterval
	| minutes date notReporting usage |
	"we will assume that intervals are all on the same date"
	date := anInterval asDate.
	minutes := anInterval duration asMinutes.
	notReporting := false.
	usage := Dictionary new.
	(self spansDuringTimespan: anInterval) do: [:span | 
		usage at: (span status) put: (span minutesIntersectingWith: anInterval) ].
	^ usage