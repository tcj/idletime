stations
lastRecordForStation: aStation
	" if there is no previous record, create one for this station with zero idletime at the Unix epoch"
	^ (self logForStation: aStation) lastRecord