as yet unclassified
newFromRecord: aRecord
	^ self new 
		computerName: (aRecord computerName);
		ipAddress: (aRecord ipAddress);
		yourself