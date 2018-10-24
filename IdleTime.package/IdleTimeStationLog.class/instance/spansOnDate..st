spans - history
spansOnDate: aDate
	self flag: #bewareOfTimezoneOffsets.
	^ self spans select: [:span | span dates includes: aDate ]