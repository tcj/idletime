remove
forgetStation: aStation
	self stations removeKey: (aStation shortName) ifAbsent: [ UnknownStationError signal: aStation shortName].
