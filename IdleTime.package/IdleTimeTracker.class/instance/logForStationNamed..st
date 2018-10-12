log
logForStationNamed: aString
	^ self stationLogs at: (self stationRegistry stationNamed: aString) ifAbsent: [ UnknownStationError signal: aString]
