log
logRecord: aRecord
	| log station | 
	station := stationRegistry registerStationFromRecord: aRecord.
	log := self stationLogs 
		at: station 
		ifAbsentPut: [IdleTimeStationLog newForStation: station withRecord: aRecord].
	"duplicate log on newly-created StationLog probably doesn't matter - just updates the span"
	log logRecord: aRecord.