as yet unclassified
emptyRecordForStation: aStation
	^ self new
		computerName: (aStation computerName);
		ipAddress: (aStation ipAddress);
		idleTimeSeconds: 0;
		timestamp: (DateAndTime unixEpoch);
		yourself