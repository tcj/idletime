testing
status
	^ self isIdle
		ifTrue: [IdleTimeIdleStatus]
		ifFalse: [IdleTimeActiveStatus]