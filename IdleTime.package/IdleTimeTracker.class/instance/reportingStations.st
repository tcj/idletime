stations
reportingStations
"	^ self stationRegistry reportingStations"
	^ self allStations select: [:station | station status isReporting ]