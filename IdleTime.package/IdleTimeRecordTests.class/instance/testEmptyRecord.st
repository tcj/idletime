as yet unclassified
testEmptyRecord
	| empty | 
	empty := IdleTimeRecord emptyRecordForStation: station.
	self assert: [empty computerName = 'TEST-01'].
	self assert: [empty timestamp year = 1970].
	