chronology
datesWithoutOffsets
	^ self dates collect: [:ea | ea deepCopy stripTimezone ]