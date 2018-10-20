reporting
spansDuringTimespan: aTimespan
	^ self spans select: [:ea | (aTimespan intersection: ea timespan) notNil ]