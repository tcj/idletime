queries
numberOfActiveSpansToday
	^ self spansToday count: [:span | span status isActive] 
