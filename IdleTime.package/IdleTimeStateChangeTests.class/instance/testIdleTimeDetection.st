as yet unclassified
testIdleTimeDetection
	self assert: [ stateChangeToIdle state = #wentIdle ].
	self deny: [ stateChangeToIdle state = #wentActive ].
