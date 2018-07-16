logging
readFromString: aString
	| elems |
	elems := aString findTokens: ','.
	^ self new
		timeStamp: (DateAndTime fromString: (elems at: 1));
		computerName: (elems at: 2);
		ipAddress: (elems at: 3);
		idleTimeSeconds: (elems at: 4);
		yourself
