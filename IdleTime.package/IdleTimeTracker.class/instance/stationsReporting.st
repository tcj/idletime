stations
stationsReporting
	^ self allStations select: [:station | (self statusOfStation: station) isReporting ]