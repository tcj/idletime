shortcuts
ifChanged: aBlock
	"execute aBlock if there has been no change of state"
	self noChange ifFalse: aBlock
	
