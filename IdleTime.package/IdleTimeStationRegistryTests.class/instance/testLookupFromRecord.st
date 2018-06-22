as yet unclassified
testLookupFromRecord
	| lookedUp |
	lookedUp := registry stationMatchingRecord: record.
	self assert: [lookedUp computerName = station computerName]