as yet unclassified
compareOldRecord: record1 toNewRecord: record2
	^ self basicNew
		oldRecord: record1;
		newRecord: record2;
		initialize;
		yourself
		