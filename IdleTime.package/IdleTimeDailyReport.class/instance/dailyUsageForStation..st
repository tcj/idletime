private
dailyUsageForStation: aStation
	^ usageByStation at: aStation ifAbsent: [ self error: 'no data for ', aStation ].