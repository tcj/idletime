rendering
renderOverviewFor: aStation on: html
	| log |
	log := tracker logForStation: aStation.
	html heading level: 2; with: aStation computerName.
	
	html paragraph: (tracker statusStringForStation: aStation).
	html paragraph: (log currentStatusLength asDuration roundTo: (1 minutes)).
	html paragraph: (log numberOfActiveSpansToday).
	html paragraph: (log minutesActiveToday).