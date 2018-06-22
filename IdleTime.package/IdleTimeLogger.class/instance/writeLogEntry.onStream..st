writing - dictionaries
writeLogEntry: aDict onStream: aStream
	| now |
	self halt: 'should not be sent'.
	now := DateAndTime now asSeconds.
	aStream nextPutAll: ({ now asString.  aDict at: 'cn'.  aDict at: 'ip'.  aDict at: 'idletime' . }
		joinSeparatedBy: ',').
	aStream nextPut: Character cr.
