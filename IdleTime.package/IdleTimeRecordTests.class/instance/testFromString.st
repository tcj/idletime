testing
testFromString
	"2018-06-21T17:01:35.680565-07:00,DMS-00,10.0.6.100,22"
	self assert: [fromString computerName = 'DMS-00']