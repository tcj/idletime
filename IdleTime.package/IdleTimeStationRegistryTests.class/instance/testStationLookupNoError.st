as yet unclassified
testStationLookupNoError
	| fail found | 
	fail := false.
	[
		found := registry stationNamed: 'TEST-01'
	] on: UnknownStationError do: [ fail := true ].
	self shouldnt: fail.
	
