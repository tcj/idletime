exporting
writeCsvFile
	| file filename |
	filename := self csvFilename. 
	file := FileDirectory default newFileNamed: filename.
	[ self outputCsvOn: file ] ensure: [ file close ].
	Transcript show: 'csv report written to ', filename; cr.


