other
lastSpan
	^ spans
		ifEmpty: [ nil ]
		ifNotEmpty: [:s | s last]