as yet unclassified
testActiveStateChange
	self assert: [stateChange2 wentActive].
	self deny: [stateChange2 wentIdle].
	self deny: [stateChange2 noChange].