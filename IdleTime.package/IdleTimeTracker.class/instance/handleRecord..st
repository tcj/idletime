recording
handleRecord: aRecord
	| station stateChange |
	"look up station"
	station := stationRegistry stationForRecord: aRecord.
	"calculate state change from our last record to the newly received one"
	stateChange := IdleTimeStateChange compareOldRecord: (self lastRecordForStation: station) toNewRecord: aRecord.
	"record state change (if it changed)"
	stateChange noChange
		ifFalse: [ 
	"		stateChange inspect. "
			self recordStateChange: stateChange ].
	"replace our last record"
	lastRecords at: station put: aRecord.

	^ stateChange	