rendering
renderReportLogForStation: aStation on: html
	| log logEntries oldStamp newStamp  |
	html heading level: 3; with:  aStation computerName.
	log := tracker logForStation: aStation.
	logEntries := calendarDate 
		ifNil: [ log allSpans ]
		ifNotNil: [ log spansOnDate: calendarDate ].

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
