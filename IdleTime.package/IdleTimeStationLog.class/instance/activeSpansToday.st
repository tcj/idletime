spans - live today
activeSpansToday
	^ self spansToday select: [:span | span status isActive] 
