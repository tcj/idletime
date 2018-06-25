only lookup
locations
	^ (self allStations collect: [:station | station location]) asSet