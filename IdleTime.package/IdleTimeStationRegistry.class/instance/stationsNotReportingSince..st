check in
stationsNotReportingSince: aDateAndTime
	^ self allStations select: [:station | | checkIn |
		checkIn := self lastCheckInForStation: station.
		checkIn 
			ifNil: [ true ]
			"another reason lastCheckInForStation: should probably return epoch"
			ifNotNil: [ checkIn < aDateAndTime  ] ].