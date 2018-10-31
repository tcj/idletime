rendering
renderLastSpansOn: html
	html heading
		level: 2; with: 'current station status'.
	html table: [
		html tableRow: [ 
			html tableHeading: 'station'.
			html tableHeading: 'status'.
			html tableHeading: 'for how long'.
		].
		self session latestSpansSortedByStation do: [:assoc |
			| station span |
			station := assoc key.
			span := assoc value.
			html tableRow: [ 
				html tableData: [ 
					html anchor
						callback: [ self viewLogForStation: station ];
						with: [ html text: station shortName ] ].
				html tableData: [ html text: span statusString ].
				html tableData: [ html text: span statusMinutes ].
			]
		]
	]