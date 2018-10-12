reaping
reap
	self needsReap ifTrue: [
		Transcript show: self station shortName, ' needs reap'; cr.
		self logRecord: (IdleTimeReaperRecord newForStation: self station).
	]