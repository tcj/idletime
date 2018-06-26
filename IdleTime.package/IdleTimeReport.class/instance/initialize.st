accessing
initialize
	super initialize.
	startDate := changes last timestamp asDate.
	endDate := changes first timestamp asDate.