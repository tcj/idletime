other
calculateState
	"If the oldValue (idle seconds) is greater than the newValue, a state change has occurred"
	( oldRecord isIdle and: [newRecord isActive] )
		ifTrue: [ ^ #wentActive ].

	"are we past the idle time threshold, such that we have gone idle?"
	( oldRecord isActive and: [newRecord isIdle] )
		ifTrue: [ ^ #wentIdle ].		

	"did the last record happen more than (threshold minutes) ago?"
	"perhaps this test would be better if compared against the new record instead of DateAndTime now"
	(oldRecord happenedLongAgo and: [newRecord happenedRecently]) 
		ifTrue: [ ^ #resumedReporting ].
		
	"otherwise, no change"	

	^ #noChange .