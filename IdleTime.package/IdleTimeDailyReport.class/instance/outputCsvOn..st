exporting
outputCsvOn: aStream
	| intervalNames |
	"header"
	intervalNames := self intervals collect: [:span | span start asTime printString ].  "could be asUTC"
	aStream
		nextPutAll: 'computerName';
		nextPut: $,;
		nextPutAll: ( intervalNames joinSeparatedBy: ',');
		cr.
	self stations sorted do: [:station |  | usage |
		aStream nextPutAll: station shortName.
		aStream nextPut: $,.
		usage := self intervals collect: [:interval | self summarizeUsage: (self usageForStation: station atInterval: interval)].
		aStream nextPutAll: (usage joinSeparatedBy: $,).
		aStream cr.
	].
