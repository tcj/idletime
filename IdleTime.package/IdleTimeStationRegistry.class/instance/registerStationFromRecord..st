lookup or create
registerStationFromRecord: aRecord
	"create station if it doesn't already exist"
	^ stations at: aRecord computerName ifAbsentPut: [IdleTimeStation newFromRecord: aRecord]