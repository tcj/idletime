testing
testEmptyRecord
	| empty | 
	empty := IdleTimeRecord emptyRecordForStation: station.
	self assert: [empty computerName = 'TEST-01'].
	self assert: [empty timeStamp year = 1970].
	self assert: [empty isEmptyRecord]