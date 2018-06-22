other
calculateState
	"If the oldValue (idle seconds) is greater than the newValue, a state change has occurred"
	( ( self oldTime >= IdleTimeThreshold ) and: (self oldTime > self newTime ) )
		ifTrue: [ ^ #wentActive ].

	"are we past the idle time threshold, such that we have gone idle?"
	( (self oldTime < IdleTimeThreshold) and: (self newTime >= IdleTimeThreshold) )
		ifTrue: [ ^ #wentIdle ].		

	"did the last record happen more than (threshold minutes) ago?"
	"perhaps this test would be better if compared against the new record instead of DateAndTime now"
	(self oldRecord happenedLongAgo) 
		ifTrue: [ ^ #resumedReporting ].
		
	"otherwise, no change"	

	^ #noChange .