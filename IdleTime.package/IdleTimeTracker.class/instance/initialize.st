initialize-release
initialize
	super initialize.
	stationRegistry := IdleTimeStationRegistry new.
	self spawnReaper.