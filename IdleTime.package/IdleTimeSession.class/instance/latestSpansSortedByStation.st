as yet unclassified
latestSpansSortedByStation
	^ self tracker latestSpans sorted: [:a :b | a key <= b key]