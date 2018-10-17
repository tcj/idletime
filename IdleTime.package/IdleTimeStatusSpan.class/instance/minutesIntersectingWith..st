chronology
minutesIntersectingWith: aTimespan
	| intersection |
	intersection := (self timespan intersection: aTimespan) ifNil: [0 minutes].
	^ intersection asDuration roundTo: 1 minutes. 