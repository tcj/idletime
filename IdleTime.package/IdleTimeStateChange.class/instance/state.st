accessing
state
	^ state 
		ifNil: [ 
			self status 
				ifNil: [#unknown] 
				ifNotNil: [:s | s asSymbol ] ]
		ifNotNil: [:s |  s]
