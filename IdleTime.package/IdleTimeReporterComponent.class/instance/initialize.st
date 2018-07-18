initialize-release
initialize
	super initialize.
	tracker := self session tracker.
	calendar := WAMiniCalendar new 
		selectBlock: [:date | self calendarDate: date];
		canSelectBlock: [:date | date <= Date today].
	location = '* all'.