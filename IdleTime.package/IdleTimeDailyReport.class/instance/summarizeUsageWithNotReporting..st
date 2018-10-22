exporting
summarizeUsageWithNotReporting: aCollection
	"this is hairy"
	| idle active notReporting percentage |
	notReporting := aCollection at: IdleTimeNotReportingStatus ifAbsent: [ 0 minutes ].
	idle := aCollection at: IdleTimeIdleStatus ifAbsent: [ 0 minutes ].
	active := aCollection at: IdleTimeActiveStatus ifAbsent: [ 0 minutes ].
	percentage := (active > 0 minutes) 
		ifTrue: [ (15 minutes / active) asFloat ]
		ifFalse: [ 0 ]. 
	"if station wasn't reporting for a while, indicate by making our result negative"
	^ (notReporting > 0 minutes)
		ifTrue: [ -1.0 + percentage ]
		ifFalse: [ percentage ]