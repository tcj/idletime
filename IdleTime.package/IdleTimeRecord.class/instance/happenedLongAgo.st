testing
happenedLongAgo
	"is this report from quite a while ago (past a certain threshold we've set?)"
	| longAgo  |
	longAgo := DateAndTime now - self class reapThreshold.
	^ self timeStamp <= longAgo
			
