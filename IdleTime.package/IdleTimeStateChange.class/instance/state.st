accessing
state
	
	^ state ifNil: [state := self calculateState]
