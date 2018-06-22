as yet unclassified
initializeStatusMapper
	StatusMapper := Dictionary newFrom: { 
		#wentIdle -> 'idle'.
		#wentActive -> 'active'.
		#notReporting -> 'not reporting'.
		#resumedReporting -> 'just resumed reporting'.
		#startedReporting -> 'just started reporting'.
	}.
	
"
self initializeStatusMapper
"