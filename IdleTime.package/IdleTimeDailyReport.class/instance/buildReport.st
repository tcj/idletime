private
buildReport
	self logs do: [:log |   
		self intervals do: [:interval |
			self forStation: (log station) 
				atInterval: interval 
				putUsage: (log usageAtInterval: interval). ] ].