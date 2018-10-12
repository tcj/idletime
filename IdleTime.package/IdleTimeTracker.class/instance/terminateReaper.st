reaping
terminateReaper
	reaper ifNotNil: [:r | 
		r suspend.
		r terminate.
		Transcript show: 'reaper terminated.'; cr. ].
	reaper := nil.

	