rendering
locationMenuItems
	| loc | 
	loc := self session tracker stationRegistry locations.
	loc add: '* all'.
	^ loc