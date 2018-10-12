logging spans
lastSpan
	^ spans
		ifEmpty: [ nil ]
		ifNotEmpty: [:s | s last]