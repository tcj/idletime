as yet unclassified
setUp
	record1 := IdleTimeRecord sample1.
	record2 := IdleTimeRecord sample2.
	record3 := IdleTimeRecord fromString: '2018-08-16T12:32:33.55402-07:00,DMS-02,10.0.6.102,13646'.
	record4 := IdleTimeRecord fromString: '2018-08-16T13:03:41.030549-07:00,DMS-02,10.0.6.102,15514'.
	span1 := IdleTimeStatusSpan newFromRecord: record1.
	span2 := IdleTimeStatusSpan compareOldRecord: record3 toNewRecord: record4. 