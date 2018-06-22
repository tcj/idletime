as yet unclassified
testStationLookupError
	| fail found | 
	fail := false.
	[
		found := registry stationNamed: 'FQ49ED'
	] on: UnknownStationError do: [ fail := true ].
	self should: fail.