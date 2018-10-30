server control
initialize
	super initialize.
	tracker := IdleTimeTracker default.
	server := WebServer new.