queries
activeSpansToday
	^ self spansToday select: [:span | span status isActive] 
