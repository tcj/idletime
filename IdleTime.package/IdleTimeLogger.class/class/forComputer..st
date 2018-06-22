defaults
forComputer: aString
	^ self basicNew 
		computerId: aString;
		initialize;
		yourself