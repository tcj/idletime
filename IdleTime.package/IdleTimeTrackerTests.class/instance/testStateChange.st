as yet unclassified
testStateChange
	self assert: [stateChange2 wentActive].
	self deny: [stateChange2 wentIdle].
	

	