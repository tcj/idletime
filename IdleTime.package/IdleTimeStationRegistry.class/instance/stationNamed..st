only lookup
stationNamed: aString
	^ stations at: aString ifAbsent: [UnknownStationError signal: aString]