initialize-release
initialize
	super initialize.
	"the schedule should include offsets if IdleTimeRecords do"
	schedule := self start to: self end by: 15 minutes.
	intervals := self buildIntervals.
	stations := Set newFrom: ( self logs collect: [:ea | ea station ] ).
	usageByStation := Dictionary new.
	self buildReport.
	