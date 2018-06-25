station state
minutesSinceLastStateChangeForStation: aStation
	^ (self timeSinceLastStateChangeForStation: aStation) roundTo: (1 minutes)