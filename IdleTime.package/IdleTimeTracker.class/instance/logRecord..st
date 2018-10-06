log
logRecord: aRecord
	| log station | 
	station := stationRegistry stationForRecord: aRecord.
	log := self stationLogs 
		at: station 
		ifAbsentPut: [IdleTimeStationLog newForStation: station withRecord: aRecord].
	
	log logRecord: aRecord.