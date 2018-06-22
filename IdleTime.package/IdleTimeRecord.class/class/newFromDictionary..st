as yet unclassified
newFromDictionary: aDict
	^ self new 
		computerName: (aDict at: 'cn');
		ipAddress: (aDict at: 'ip');
		idleTimeSeconds: (aDict at: 'idletime') asInteger;
		yourself.
