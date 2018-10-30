as yet unclassified
log: aString
	| out | 
	"out := dirent readWriteStream."
	out := self directory fileNamed: self fileName.
	out ascii.
	[ 
		out 
			setToEnd;
			nextPutAll: Date dateAndTimeNow printString;
			nextPut: Character space;
			nextPutAll: aString;
			crlf.		
	] ensure: [ out close ].