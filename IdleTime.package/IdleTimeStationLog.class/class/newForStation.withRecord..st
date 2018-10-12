instance creation
newForStation: aStation withRecord: aRecord
	^ (self newForStation: aStation)
		logRecord: aRecord;
		yourself