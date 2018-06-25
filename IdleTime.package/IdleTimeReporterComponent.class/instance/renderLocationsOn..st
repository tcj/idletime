rendering
renderLocationsOn: html
	html heading level: 2; with: 'locations'.
	html table: [
		html tableRow: [
				tracker stationRegistry locations do: [:aString | 	html tableData: aString ]
		]
	]
.
