only lookup
allStations
	self flag: #inefficient.
	^ stations values reject: [:station | station computerName = 'timjohnson']