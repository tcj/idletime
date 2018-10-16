stations
reportingStations
	^ self allStations select: [:station | (self statusOfStation: station) isReporting ]