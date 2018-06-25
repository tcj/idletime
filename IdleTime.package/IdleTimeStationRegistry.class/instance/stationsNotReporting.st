check in
stationsNotReporting
	^ self allStations reject: [:station | self stationHasCheckedInRecently: station ]