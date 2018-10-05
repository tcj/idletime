accessing
setUp
	tracker := IdleTimeTracker defaultTest.
	log := IdleTimeStationLog fromOldFile: '/Users/admin/Documents/Squeak5.2alpha-18103-64bit/idletimelogs/DDR-01.log'.
	registry := IdleTimeStationRegistry new.
	station := registry stationForRecord: 
	
	log inspect.
	