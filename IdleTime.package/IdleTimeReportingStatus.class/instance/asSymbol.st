as yet unclassified
asSymbol
	^ self status
		ifTrue: [#resumedReporting]
		ifFalse: [#notReporting]