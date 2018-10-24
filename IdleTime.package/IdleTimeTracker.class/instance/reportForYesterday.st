reporting
reportForYesterday
	^ self reportOnDate: ((DateAndTime now - 1 day) asDate)