initialize-release
initialize
	super initialize.
	computerId ifNil: [self error: 'computerId is not yet set.'].
	ffpan := DefaultLogDirectory pathName, '/', self computerId, '.log'.
	