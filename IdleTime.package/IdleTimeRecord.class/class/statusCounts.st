utilities
statusCounts
	^ (self allInstances collect: [:r | r status]) asBag