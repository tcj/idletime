as yet unclassified
messageText
	
	"Return an exception's message text."

	^messageText == nil
		ifTrue: [stationName printString]
		ifFalse: [messageText]