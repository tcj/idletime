initialize-release
initialize
	super initialize.
	lastRecords := Dictionary new.
	stationRegistry := IdleTimeStationRegistry new.
	stateChanges := Dictionary new.
