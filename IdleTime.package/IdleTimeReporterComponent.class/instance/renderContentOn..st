rendering
renderContentOn: html
	| stations count perRow station |
	self renderFilterSelectionOn: html.
	
"	self renderLocationsOn: html."
"	self renderReportingStationsOn: html.
	self renderUnreportingStationsOn: html.
"
	"show report log for every station."
	stations :=	(location = '* all')
		ifTrue: [ tracker allStationsSorted ]
		ifFalse: [ tracker stationRegistry stationsFiltered: [:ea | ea location = location ] andSorted: true ].
	
	count := stations size.
	perRow := 4.
	station := stations ifEmpty: [nil] ifNotEmpty: [stations first].
	html table: [ 
		1 to: count by: perRow do: [:y |
			html tableRow: [
				0 to: (perRow - 1) do: [:x | | z | 
					z := x + y.
					( z <= count ) ifTrue: [
						html tableData: [ self renderOverviewFor: (stations at: z) on: html  ].				
					]
				].
			]
		].
	].		
"	stations do:  [:station | ] "