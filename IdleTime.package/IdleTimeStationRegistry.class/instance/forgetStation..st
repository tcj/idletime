remove
forgetStation: aStation
	self stations removeKey: (aStation shortName) ifAbsent: [ UnknownStationError signal: aStation shortName].
	self lastCheckInByStation removeKey: aStation ifAbsent: [ UnknownStationError signal: aStation shortName].
		