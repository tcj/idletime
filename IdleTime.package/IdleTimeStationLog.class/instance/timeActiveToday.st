spans - live today
timeActiveToday
	^ self activeSpansToday inject: (Duration new) into: [:subTotal :span | subTotal := subTotal + span statusLength ]
