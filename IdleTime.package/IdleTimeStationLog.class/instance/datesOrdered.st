chronology
datesOrdered
	"Squeak bug(?):  do not use a Set here"
	"eliminate duplicates but beware of testing membership"
	"use datesSorted instead"
	| set |
	set := Set new.
	self allSpans do: [:span | set addAll: span datesWithoutOffsets].
	^ set asOrderedCollection