rendering
renderReportingStationsOn: html
	| stations |
	html heading level: 2; with: 'reporting stations'.
	stations := tracker reportingStations sorted.
	html table: [
		html tableRow: [ 
			html tableData: 'station'.
			stations do: [:station | 
				html tableData: [ 
					html text: station computerName.
					]
				 ]
			].
		html tableRow: [ 
			html tableData: 'state'.
			stations do: [:station | html tableData: (tracker statusStringForStation: station) ].
		].
		html tableRow: [
			html tableData: 'for how long'.
			stations do: [:station | html tableData: (tracker statusLengthForStation: station)]
		].
	].
