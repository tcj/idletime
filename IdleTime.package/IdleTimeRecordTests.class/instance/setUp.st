running
setUp
	sampleDictionary := Dictionary new.
	sampleDictionary at: 'cn' put: 'TEST-01'.
	sampleDictionary at: 'idletime' put: 669.
	sampleDictionary at: 'ip' put: '127.0.0.1'.
	record := IdleTimeRecord newFromDictionary: sampleDictionary.
	registry := IdleTimeStationRegistry new.
	station := registry stationForRecord: record.