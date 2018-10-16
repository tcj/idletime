lookup or create
registerStation: aStation
	^ self stations at: (aStation computerName) put: aStation