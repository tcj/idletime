chronology
countMinutesByTimeSlice
	| rs dict |
	dict := Dictionary new.
	rs := ReadStream on: self slices dateAndTimes.
	[ rs atEnd ] whileFalse: [
		| timespan |
		timespan := rs next to: (rs peek ifNil: [ self endTime roundUpToQuarterHour]).
		dict at: timespan put: (self minutesIntersectingWith: timespan).
	].
	rs close.
	^ dict