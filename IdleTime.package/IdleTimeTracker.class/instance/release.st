initialize-release
release
	"release objects in dictionaries"
	stationLogs ifNotNil: [:r | r removeAll].
	stationRegistry release.
	super release.