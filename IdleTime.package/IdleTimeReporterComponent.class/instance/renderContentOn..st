rendering
renderContentOn: html
	| stations |
	self renderFilterSelectionOn: html.
	
"	self renderLocationsOn: html."
"	self renderReportingStationsOn: html.
	self renderUnreportingStationsOn: html.
"
	"show report log for every station."
	stations :=	(location = '* all')
		ifTrue: [ tracker allStationsSorted ]
		ifFalse: [ tracker stationRegistry stationsFiltered: [:ea | ea location = location ] andSorted: true ].
	
	stations do:  [:station | self renderReportLogForStation: station on: html] 