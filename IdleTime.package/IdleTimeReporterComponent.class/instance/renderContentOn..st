rendering
renderContentOn: html
	self renderUnreportingStationsOn: html.
	self renderLastSpansOn: html.
	self renderFilterSelectionOn: html.
	
"	self renderLocationsOn: html."
"	self renderReportingStationsOn: html."

	"show report log for every station."
"	stations :=	(location = '* all')
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
						html tableData: [ self renderCurrentDataFor: (stations at: z) on: html  ].				
					]
				].
			]
		].
	].	"	
"	stations do:  [:station | ] "