rendering
renderReportingStationsOn: html
	| stations |
	html heading level: 2; with: 'reporting stations'.
	stations := tracker stationRegistry reportingStations sorted.
	html table: [
		html tableRow: [ 
			html tableData: 'station'.
			stations do: [:station | html tableData: station computerName.].
		].
		html tableRow: [ 
			html tableData: 'state'.
			stations do: [:station | html tableData: (tracker statusStringForStation: station) ].
		].
		html tableRow: [
			html tableData: 'd:h:m:s'.
			stations do: [:station | html tableData: (tracker minutesSinceLastStateChangeForStation: station)]
		].
	].

