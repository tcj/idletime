recording
handleRecord: aRecord
	| station stateChange |
	"look up station and allow registry to keep track of last check-in"
	station := stationRegistry recordCheckIn: aRecord.
	"calculate state change from our last record to the newly received one"
	stateChange := IdleTimeStateChange compareOldRecord: (self lastRecordForStation: station) toNewRecord: aRecord.
	"record state change (if it changed)"
	stateChange ifChanged: [ self recordStateChange: stateChange ].
	"replace our last record for this station"
	lastRecords at: station put: aRecord.
	"the following should really be triggered by a timer"
	self periodicCheckForQuietStations.
	
	^ stateChange	