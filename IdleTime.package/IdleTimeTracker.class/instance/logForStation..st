log
logForStation: aStation
	^ self stationLogs at: aStation ifAbsentPut: [IdleTimeStationLog newForStation: aStation]