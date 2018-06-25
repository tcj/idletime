station state
stateChangesForStation: aStation
	^ stateChanges at: aStation ifAbsent: [ #( ) ]