accessing
lastCheckTime

	^ lastCheckTime ifNil: [	lastCheckTime := DateAndTime now]