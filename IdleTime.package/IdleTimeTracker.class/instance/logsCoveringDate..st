log
logsCoveringDate: aDate
	"squeak bug?  don't test for Date in a Set"
	^ self stationLogs values select: [:log | log datesOrdered includes: aDate ]