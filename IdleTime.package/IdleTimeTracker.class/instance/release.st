initialize-release
release
	"release objects in dictionaries"
	lastRecords ifNotNil: [:r | r removeAll].
	stateChanges ifNotNil: [:r | r removeAll].
	stationRegistry release.
	super release.