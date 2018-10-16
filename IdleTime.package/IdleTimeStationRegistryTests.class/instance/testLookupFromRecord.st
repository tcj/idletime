as yet unclassified
testLookupFromRecord
	| lookedUp |
	lookedUp := registry stationForRecord: record.
	self assert: lookedUp notNil.
	self assert: [lookedUp computerName = station computerName ]