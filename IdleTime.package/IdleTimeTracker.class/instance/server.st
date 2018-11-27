accessing
server

	^ server ifNil: [server := IdleTimeServer new]