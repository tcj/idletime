reaping
spawnReaper
	reaper ifNotNil: [:r | self terminateReaper ].
	reaper := [ 
		[
			self reap. 
			(self reapInterval) wait. 
		] repeat ] forkAt: Processor userBackgroundPriority.
	reaper 
		suspend;
		resume.