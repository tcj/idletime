rendering
renderReportLogForStation: aStation on: html
	| stateChanges stamp headerText |
	headerText := '{1}: {2}' format: { aStation computerName.  tracker statusStringForStation: aStation }.
	html heading level: 3; with: headerText.
	stateChanges := tracker stateChangesForStation: aStation.
	html table: [
		stateChanges do: [:stateChange |
			stamp := stateChange timestamp.
			html tableRow: [
				html tableData: stamp asDate asString.
				html tableData: stamp asTime print24.
				html tableData: stateChange state asString.
			]
		]	
	]
