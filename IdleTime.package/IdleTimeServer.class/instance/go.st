server control
go
	"based on WebServer class>>exampleDoIt"

	| port |
	port := 9999.
	server := WebServer new listenOn: port.
	server addService: '/idletime' action:[:req| 
		req isPostRequest ifTrue:[
			"We fetch all of the data instead of streaming it"
			self logEntry: req fields.
			req send200Response: 'ok'.
		] ifFalse:[req send404Response].
	].
