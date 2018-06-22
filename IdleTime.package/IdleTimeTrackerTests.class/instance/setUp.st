as yet unclassified
setUp
	tracker := IdleTimeTracker defaultTest.
	idleRecord := IdleTimeRecord sample1.
	activeRecord := IdleTimeRecord sample2.
	"let's pretend the computer went from idle to active"
	stateChange1 := tracker handleRecord: idleRecord.
	stateChange2 := tracker handleRecord: activeRecord.
	
	station := tracker stationNamed: (idleRecord computerName).
	foundRecord := tracker lastRecordForStation: station.
	
	stateChange3 := tracker handleRecord: activeRecord.