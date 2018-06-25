station state
stateChangesTodayForStation: aStation
	^ (self stateChangesForStation: aStation) select: [:ea | ea happenedOnDate: Date today  ]