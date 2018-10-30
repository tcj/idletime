as yet unclassified
directory
	| osp |
	"Use OSProcess if available"
	osp := Smalltalk at: #OSProcess ifAbsent:  [	^ FileDirectory default].
	
	^ osp thisOSProcess environment at: #HOME 
				ifPresent: [:path | FileDirectory on: ('{1}/Library/Logs' format: { path }) ]
				ifAbsent: [ FileDirectory default ]  
		