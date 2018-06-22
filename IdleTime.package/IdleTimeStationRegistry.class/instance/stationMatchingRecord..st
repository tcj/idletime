lookup or create
stationMatchingRecord: aRecord
	"create station if it doesn't already exist"
	^ stations at: aRecord computerName ifAbsentPut: [IdleTimeStation newFromRecord: aRecord]