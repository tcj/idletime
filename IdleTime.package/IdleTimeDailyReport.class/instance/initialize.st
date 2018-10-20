initialize-release
initialize
	super initialize.
	schedule := self start to: self end by: 15 minutes.
	intervals := self buildIntervals.
	stations := Set newFrom: ( self logs collect: [:ea | ea station ] ).
	usageByStation := Dictionary new.
	self buildReport.
	