log
removeLogForStation: aStation
	| log | 
	log := self stationLogs removeKey: aStation ifAbsent: [ UnknownStationError signal: aStation shortName ].
	log release.