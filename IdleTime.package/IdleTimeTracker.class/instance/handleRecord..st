recording
handleRecord: aRecord
	"allow registry to keep track of last check-in"
	stationRegistry recordCheckIn: aRecord.

	"new style"
	self logRecord: aRecord.	

	"the following should really be triggered by a timer"
	self periodicCheckForQuietStations.
