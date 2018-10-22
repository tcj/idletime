reporting
usageAtInterval: anInterval
	| usage |
	"we will assume that intervals are all on the same date"
	usage := Dictionary new.
	(self spansDuringTimespan: anInterval) do: [:span | 
		usage at: (span status) put: (span minutesIntersectingWith: anInterval) ].
	^ usage