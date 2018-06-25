check in
lastCheckInForStation: aStation
	"should probably return epoch rather than nil"
	"see senders for details"
	^ self lastCheckInByStation at: aStation ifAbsent: [ nil ]