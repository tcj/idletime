chronology
dates
	"Squeak bug(?):  do not use a Set here"
	"eliminate duplicates but beware of testing membership"
	"use datesSorted instead"
	| dates | 
	self flag: #beware.
	dates := Set new.
	self allSpans do: [:span | dates addAll: (span canonicalDates).].
	^ dates