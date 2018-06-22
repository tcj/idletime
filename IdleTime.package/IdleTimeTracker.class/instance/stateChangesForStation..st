reports
stateChangesForStation: aStation
	^ stateChanges at: aStation ifAbsent: [ #( ) ]