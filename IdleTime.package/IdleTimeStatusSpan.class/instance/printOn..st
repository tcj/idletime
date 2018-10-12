printing
printOn: aStream
	super printOn: aStream.
	aStream 
		nextPutAll: ' (';
		nextPutAll: self statusString;		
		nextPutAll: ') starting: ';
		nextPutAll: self startTime asDate printString.
		