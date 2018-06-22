as yet unclassified
setUp
	registry := IdleTimeStationRegistry new.
	record := IdleTimeRecord sample1.
	station := registry stationMatchingRecord: record.