private
buildIntervals
	| rs intervals |
	"Is it going to double-count since this is inclusive?  Should intervals subtract 1 second?"
	intervals := OrderedCollection new.
	"the schedule should include offsets if the IdleTimeRecords do"
	rs := ReadStream on: self schedule dateAndTimes.
	[ rs atEnd ] whileFalse: [
		"add timespan to collection"
		intervals add: (  rs next to: (rs peek ifNil: [ self end ]) ) 	].
	rs close.
	^ intervals