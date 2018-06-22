as yet unclassified
setUp	
	| d1 now |
	idleSeconds := 660.  "11 minutes"
	activeSeconds := 5.  	"5 seconds"
	now := DateAndTime now.

	d1 := Dictionary newFrom: {
		'cn' -> 'TEST-01'.
		'idletime' -> activeSeconds.
		'ip' -> '127.0.0.1'. 
	}.
	"building accurate timestamps here even though they're not tested"
	activeThenRecord := IdleTimeRecord newFromDictionary: d1.
	activeThenRecord timeStamp: (now - idleSeconds seconds).

	activeNowRecord := IdleTimeRecord newFromDictionary: d1.
	activeNowRecord timeStamp: now.
	
	d1 at: 'idletime' put: idleSeconds.
	idleNowRecord := IdleTimeRecord newFromDictionary: d1.
	idleNowRecord timeStamp: now.

	idleThenRecord := IdleTimeRecord newFromDictionary: d1.
	idleThenRecord timeStamp: (now - idleSeconds seconds).

	stateChangeToIdle := IdleTimeStateChange compareOldRecord: activeThenRecord toNewRecord: idleNowRecord.
	stateChangeToActive := IdleTimeStateChange compareOldRecord: idleThenRecord toNewRecord: activeNowRecord.