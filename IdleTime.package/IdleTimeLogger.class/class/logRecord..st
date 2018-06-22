convenience
logRecord: aRecord
	^ ( self forComputer: (aRecord computerName) )
		logRecord: aRecord.
