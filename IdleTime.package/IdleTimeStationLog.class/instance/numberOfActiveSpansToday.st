spans - live today
numberOfActiveSpansToday
	^ self spansToday count: [:span | span status isActive] 
