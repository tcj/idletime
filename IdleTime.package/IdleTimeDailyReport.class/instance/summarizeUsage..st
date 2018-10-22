exporting
summarizeUsage: aDict
	"this is hairy"
	| idle active notReporting percentage |
	notReporting := aDict at: IdleTimeNotReportingStatus ifAbsent: [ 0 minutes ].
	idle := aDict at: IdleTimeIdleStatus ifAbsent: [ 0 minutes ].
	active := aDict at: IdleTimeActiveStatus ifAbsent: [ 0 minutes ].
	percentage := (active > 0 minutes) 
		ifTrue: [ (active / 15 minutes) asFloat ]
		ifFalse: [ 0 ]. 
	"if station wasn't reporting for a while, indicate by making our result negative"
	^ percentage
"	^ (notReporting > 0 minutes)
		ifTrue: [ 0.0 - percentage ]
		ifFalse: [ percentage ]"