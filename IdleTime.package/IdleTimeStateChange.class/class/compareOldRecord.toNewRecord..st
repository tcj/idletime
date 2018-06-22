as yet unclassified
compareOldRecord: record1 toNewRecord: record2
	^ self new
		oldRecord: record1;
		newRecord: record2;
		yourself