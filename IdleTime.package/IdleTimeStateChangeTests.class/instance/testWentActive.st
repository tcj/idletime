as yet unclassified
testWentActive
	self assert: [stateChangeToActive state = #wentActive].
	self assert: [stateChangeToActive wentActive].
	self deny: [stateChangeToActive state = #wentIdle ].
	self deny: [stateChangeToActive wentIdle].