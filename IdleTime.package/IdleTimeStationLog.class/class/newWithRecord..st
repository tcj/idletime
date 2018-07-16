as yet unclassified
newWithRecord: aRecord
	^ (self newForStation: (aRecord station))
		logRecord: aRecord;
		yourself