utilities
clearAllStationLogs
	self stationLogs ifNotNil: [:d | d values do: [:log | log clearAll]]