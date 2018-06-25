check in
reportingStations
	^ self allStations select: [:station | self stationHasCheckedInRecently: station ]