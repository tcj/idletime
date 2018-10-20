private
forStation: aStation atInterval: anInterval putUsage: aCollection
	| d | 
	d := self usageByStation at: aStation ifAbsentPut: [Dictionary new].
	d at: anInterval put: aCollection.