reaping
reap
	self needsReap ifTrue: [
		TransactionLog log: ('Reaping {1}' format: { self station shortName }).
		self logRecord: (IdleTimeReaperRecord newForStation: self station).
	]