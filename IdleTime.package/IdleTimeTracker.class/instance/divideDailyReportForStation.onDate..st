station state
divideDailyReportForStation: aStation onDate: aDate
	| changes spans stream currentTime currentStatus nextStatus |
	"newest first;  oldest last"
	spans := OrderedCollection new.
	changes := self stateChangesForStation: aStation onDate: aDate.
	stream := changes readStream.
	currentTime := DateAndTime now.
	currentStatus := stream next.
	[currentStatus notNil] whileTrue: [ | span nextTime statusSpan |
		nextStatus := stream peek.
		nextTime := nextStatus ifNil: [ aDate @ Time midnight ] ifNotNil: [:ex | ex timestamp ].
		span := Timespan starting: (nextTime) ending: (currentTime).
		statusSpan := IdleTimeStatusSpan status: (currentStatus) timespan: span. 
		spans add: 	statusSpan.
		currentStatus := stream next.
		currentStatus ifNotNil: [currentTime := currentStatus timestamp]
	].
	spans inspect.
	
