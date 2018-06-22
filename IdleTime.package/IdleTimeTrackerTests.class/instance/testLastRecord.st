as yet unclassified
testLastRecord
	self assert: [foundRecord notNil].
	self assert: [foundRecord == activeRecord].
	