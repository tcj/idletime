exporting
csvFilename
	^ '{1}-{2}-{3}.csv' format: { self class printString . self date printString asCamelCase . DateAndTime now hash printString }
	
