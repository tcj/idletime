chronology
happenedLongAgo
	"is this report from quite a while ago (past a certain threshold we've set?)"
	| longAgo threshold |
	threshold :=  10 minutes.
	longAgo := DateAndTime now - threshold.
	^ self timeStamp <= longAgo
			
