as yet unclassified
statusStringForStation: aStation
	^ StatusMapper at: (self statusOfStation: aStation) ifAbsent: ['unclear']