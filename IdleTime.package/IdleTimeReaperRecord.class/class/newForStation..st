as yet unclassified
newForStation: aStation
	^ self new
		computerName: (aStation computerName);
		ipAddress: (aStation ipAddress);
		idleTimeSeconds: 0;
		yourself