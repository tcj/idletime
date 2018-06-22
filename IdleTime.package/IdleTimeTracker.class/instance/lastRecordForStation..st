lookup
lastRecordForStation: aStation
	" if there is no previous record, create one for this station with zero idletime at the Unix epoch"
	^ lastRecords at: aStation ifAbsentPut: [ IdleTimeRecord emptyRecordForStation: aStation ]