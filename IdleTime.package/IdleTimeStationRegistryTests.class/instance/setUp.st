as yet unclassified
setUp
	registry := IdleTimeStationRegistry new.
	record := IdleTimeRecord sample1.   "an idle record"
"	station := registry stationMatchingRecord: record."
	station := registry recordCheckIn: record.