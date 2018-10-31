rendering
viewLogForStation: aStation
	self session selectedStation: aStation.
	self call: IdleTimeStationLogComponent new.