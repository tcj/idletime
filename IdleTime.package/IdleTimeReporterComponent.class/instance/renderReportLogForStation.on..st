rendering
renderReportLogForStation: aStation on: html
	| log stamp headerText |
	headerText := '{1}: {2}' format: { aStation computerName.  tracker statusStringForStation: aStation }.
	html heading level: 3; with: headerText.
	log := tracker logForStation: aStation.
	html table: [
		log do: [:span |
			stamp := span timestamp.
			html tableRow: [
				html tableData: stamp asDate asString.
				html tableData: stamp asTime print24.
				html tableData: span statusString.
			]
		]	
	]
