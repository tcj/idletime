running
setUp
	sampleDictionary := Dictionary new.
	sampleDictionary at: 'cn' put: 'TEST-01'.
	sampleDictionary at: 'idletime' put: 669.
	sampleDictionary at: 'ip' put: '127.0.0.1'.
	record := IdleTimeRecord newFromDictionary: sampleDictionary.
	fromString := IdleTimeRecord fromString: '2018-06-21T17:01:35.680565-07:00,DMS-00,10.0.6.100,22'.
	registry := IdleTimeStationRegistry new.
	station := registry stationForRecord: record.