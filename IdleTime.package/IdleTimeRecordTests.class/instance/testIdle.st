testing
testIdle
	self assert: [record isIdle].
	self deny: [record isActive].