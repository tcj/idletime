printing
printOn: aStream
	super printOn: aStream.
	aStream 
		nextPutAll: ' (';
		nextPutAll: self statusString;	
		nextPut: Character space;
		nextPutAll: self statusMinutes printString;
		nextPutAll: ') starting: ';
		nextPutAll: self startTime asMailMessageString.
		