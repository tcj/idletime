as yet unclassified
renderContentOn: html
	| log aStation logEntries oldStamp newStamp  |
	html anchor 
		callback: [ self answer ];
		with: [ html heading
		level: 2;
with: '<-- back' ].
	aStation := self session selectedStation.
	html heading level: 3; with:  aStation computerName.
	log := self session tracker logForStation: aStation.
	logEntries := "self session selectedDate " nil
		ifNil: [ log allSpans ]
		ifNotNil: [:date |  log spansOnDate: date ].

	html table: [
		(logEntries sorted: [:a :b | a startTime >= b startTime]) do: [:span |
			oldStamp := span startTime.
			newStamp := span endTime.
			html tableRow: [
				html tableData: [
					html text: oldStamp asDate asString.
					html space.
					html text: oldStamp asTime print24. ].
				html tableData
					with: span statusString.
				html tableData
					with: span friendlyString.	
				html tableData: [
					html text: newStamp asDate asString.
					html space.
					html text: newStamp asTime print24.		].
			]
		]	
	]
