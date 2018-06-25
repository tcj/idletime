as yet unclassified
testStationsReporting
	self assert: [registry stationsReporting includes: station].
	self deny: [registry stationsNotReporting includes: station].