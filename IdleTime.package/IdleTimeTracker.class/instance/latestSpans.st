reporting
latestSpans
	^ self allLogs collect: [:log | log station -> log latestSpan ]
	