as yet unclassified
renderReportLogForStation: aStation on: html
	| log logEntries oldStamp newStamp  |
	html heading level: 3; with:  aStation computerName.
	log := self session tracker logForStation: aStation.
	logEntries := self session selectedDate 
		ifNil: [ log allSpans ]
		ifNotNil: [:date |  log spansOnDate: date ].

	html table: [
		(logEntries sorted: [:a :b | a startTime >= b startTime]) do: [:span |
			oldStamp := span startTime.
			newStamp := span endTime.
			html tableRow: [
				html tableData
					colSpan: 2;
					with: span statusString.
				html tableData
					colSpan: 2;
					with: span friendlyString.

			].
			html tableRow: [
				html tableData: oldStamp asDate asString.
				html tableData: oldStamp asTime print24.
				html tableData: newStamp asDate asString.
				html tableData: newStamp asTime print24.
				
			]
		]	
	]
