initialize-release
release
	spans ifNotNil: [:s | s removeAll ].
	station := nil.
	super release.
