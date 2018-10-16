spans - history
spansDuring: aTimespan

	^ self spans select: [:span | aTimespan includesAnyOf: span timespan ]