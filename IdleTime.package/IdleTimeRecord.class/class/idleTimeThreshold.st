defaults
idleTimeThreshold
	^ IdleTimeThreshold ifNil: [IdleTimeThreshold := 600]  "600 seconds = 10 minutes"