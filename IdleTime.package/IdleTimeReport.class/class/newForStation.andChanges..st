as yet unclassified
newForStation: aStation andChanges: aCollection
	^ self basicNew
		station: aStation;
		changes: aCollection;
		initialize;
		yourself