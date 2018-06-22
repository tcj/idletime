as yet unclassified
testNoChange
	self assert: [stateChange3 noChange].
	self deny: [stateChange3 wentIdle].
	self deny: [stateChange3 wentActive].