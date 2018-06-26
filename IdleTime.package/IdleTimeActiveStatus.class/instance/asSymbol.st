as yet unclassified
asSymbol
	^ self active
		ifTrue: [ #wentActive ]
		ifFalse: [ #wentIdle ]