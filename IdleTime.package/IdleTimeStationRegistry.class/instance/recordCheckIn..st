check in
recordCheckIn: aRecord
	"return the station from this record, and note internally that this station has checked in"
	| station |
	station := self stationForRecord: aRecord.
	self lastCheckInByStation at: station put: aRecord timestamp.
	^ station
	