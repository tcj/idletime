as yet unclassified
printOn: aStream
	super printOn: aStream.
	aStream 
		nextPutAll: ' (';
	 	nextPutAll: status statusString;
		nextPutAll: ' for ';
		nextPutAll: (timespan asDuration printString);
		nextPut: $).
