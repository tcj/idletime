instance creation
reaperRecordForStation: aStation
	^ self new
		computerName: (aStation computerName);
		ipAddress: (aStation ipAddress);
		idleTimeSeconds: 0;
		yourself