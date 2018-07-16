log
logRecord: aRecord
	| log station | 
	station := stationRegistry stationForRecord: aRecord.
	log := self stationLogs at: station ifAbsentPut: [IdleTimeStationLog newWithRecord: aRecord].
	
	log record: aRecord.