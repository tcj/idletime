reports
buildReportForStation: aStation during: aTimespan
	^ IdleTimeReport 
		newForStation: aStation 
			andChanges: ((self stateChangesForStation: aStation) select: [:ea | ea happenedDuring: aTimespan]).