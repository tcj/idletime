check in
stationHasCheckedInRecently: aStation
	| recently lastCheckIn |
	recently := DateAndTime now - self recentlyThreshold.
	lastCheckIn := self lastCheckInForStation: aStation.
	"could be rewritten to return epoch instead of nil"
	lastCheckIn ifNil: [^ false ].
	"could be rewritten to use a duration"
	^ lastCheckIn >= recently.