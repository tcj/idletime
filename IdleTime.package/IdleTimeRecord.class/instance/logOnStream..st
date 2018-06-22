printing
logOnStream: aStream
	aStream nextPutAll: ( 
		{ 	self timeStamp asString.
		   	self computerName.
			self ipAddress.
			self idleTimeSeconds } joinSeparatedBy: ',' ).
	aStream crlf.