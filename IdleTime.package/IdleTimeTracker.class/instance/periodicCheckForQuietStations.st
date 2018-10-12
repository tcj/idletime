reaping
periodicCheckForQuietStations
	| now threshold | 
	"this stands to be optimized and reworked greatly"
	threshold := 5 minutes.
	now := DateAndTime now.
	((now - self lastCheckTime ) >= threshold)
		ifTrue: [ lastCheckTime := DateAndTime now  ]