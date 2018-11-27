instance creation
emptyRecordForStation: aStation
	^ self new
		computerName: (aStation computerName);
		ipAddress: (aStation ipAddress);
		idleTimeSeconds: 0;
		timeStamp: (DateAndTime unixEpoch);
		yourself