only lookup
stationForRecord: aRecord
	| stationName |
	stationName := aRecord computerName.	
	^ stations at: stationName ifAbsent: [UnknownStationError signal: stationName]