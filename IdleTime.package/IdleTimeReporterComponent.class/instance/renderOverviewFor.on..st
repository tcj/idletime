rendering
renderOverviewFor: aStation on: html
	| log |
	log := tracker logForStation: aStation.
	html heading level: 2; with: aStation computerName.
	
	html div
		class: 'dataCaption';
		with: 'current status'.
	html paragraph
		class: 'dataItem';
		with: (tracker statusStringForStation: aStation).

	html div
		class: 'dataCaption';
		with: 'for how long'.
	html paragraph
		class: 'dataItem';
		with: (log currentStatusLength asDuration roundTo: (1 minutes)).
		
	html div
		class: 'dataCaption';
		with: 'active sessions today'.
	html paragraph
		class: 'dataItem';
		with: (log numberOfActiveSpansToday).

	html div
		class: 'dataCaption';
		with: 'time active today'.
	html paragraph
		class: 'dataItem';
		with: (log minutesActiveToday).