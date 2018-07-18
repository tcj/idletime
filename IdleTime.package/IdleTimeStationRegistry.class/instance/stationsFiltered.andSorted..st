only lookup
stationsFiltered: aBlock andSorted: aBoolean
	| filteredStations |
	filteredStations := self allStations select: aBlock.

	^ aBoolean 
		ifTrue: [filteredStations asSortedCollection: [:a :b | a computerName <= b computerName]]
		ifFalse: [filteredStations]

	