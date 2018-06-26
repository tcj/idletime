station state
stateChangesForStation: aStation onDate: aDate
	^ (self stateChangesForStation: aStation) select: [:ea | ea happenedOnDate: aDate  ]