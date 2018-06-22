unsent
log: aDict
	^ ( self forComputer: (aDict at: 'cn') )
		logEntry: aDict.
