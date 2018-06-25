only lookup
allStationsSorted
	^ self allStations asSortedCollection: [:a :b | a computerName <= b computerName]