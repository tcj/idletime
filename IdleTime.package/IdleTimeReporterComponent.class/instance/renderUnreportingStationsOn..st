rendering
renderUnreportingStationsOn: html
	| stations |
	stations := tracker stationRegistry stationsNotReporting sorted.
	html heading level: 2; with: 'unreporting stations'.
	html table: [
		html tableRow: [ 
			html tableData: 'station'.
			stations do: [:station | html tableData: station computerName ].
		].
		html tableRow: [ 
			html tableData: 'last state'.
			stations do: [:station | html tableData: (tracker statusStringForStation: station) ].
		].	
"		html tableRow: [
			html tableData: 'for how long' .
			stations do: [:station | html tableData: (tracker minutesSinceLastStateChangeForStation: station)]
		].	"	
	]
