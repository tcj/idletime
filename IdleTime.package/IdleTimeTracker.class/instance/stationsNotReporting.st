stations
stationsNotReporting
	^ self allStations reject: [:station | (self statusOfStation: station) isReporting ]