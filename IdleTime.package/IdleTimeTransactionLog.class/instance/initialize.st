as yet unclassified
initialize
	super initialize.
	fileName := 'tracker-{1}.log' format: { DateAndTime now friendlyString }.
	Transcript show: ('new log: ', self directory, '/', fileName); cr.