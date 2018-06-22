server control
initialize
	super initialize.
	logger := IdleTimeLogger.
	tracker := IdleTimeTracker default.