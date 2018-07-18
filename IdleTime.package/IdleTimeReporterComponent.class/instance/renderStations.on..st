rendering
renderStations: stations on: html

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
