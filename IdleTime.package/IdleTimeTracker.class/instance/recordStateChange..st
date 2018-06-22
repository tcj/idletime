recording
recordStateChange: aChange
	| station stationChanges |
	"should write to disk to make persistent.  in the meantime, just log to transcript"
	aChange logToTranscript.
	
	station := stationRegistry stationNamed: (aChange computerName).
	stationChanges := stateChanges at: station ifAbsentPut: ( SortedCollection sortBlock: [:a :b | a timestamp >= b timestamp]).
	stationChanges add: aChange.
	
