testing
happenedLongAgo
	"is this report from quite a while ago (past a certain threshold we've set?)"
	| longAgo | 
	longAgo := DateAndTime now - 10 minutes.
	^ self timeStamp <= longAgo
			
