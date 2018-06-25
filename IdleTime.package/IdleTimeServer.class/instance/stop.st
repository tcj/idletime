server control
stop
	server ifNotNil: [server destroy].
	server := nil.
	