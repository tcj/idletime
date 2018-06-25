as yet unclassified
initializeStatusMapper
	StatusMapper := Dictionary newFrom: { 
		#wentIdle -> 'idle'.
		#wentActive -> 'active'.
		#notReporting -> 'not reporting'.
		#resumedReporting -> 'recently resumed reporting'.
		#startedReporting -> 'recently started reporting'.
	}.
	
"
self initializeStatusMapper
"