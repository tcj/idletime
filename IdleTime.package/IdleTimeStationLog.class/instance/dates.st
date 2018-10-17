chronology
dates
	| dates | 
	dates := Set new.
	self allSpans do: [:span | dates addAll: (span dates).].
	^ dates