as yet unclassified
newForStation: aStation fromOldFile: aFileName
	| log  s records | 
	log := self newForStation: aStation.
	
	records := OrderedCollection new.
	s := FileStream oldFileNamed: aFileName.
	[ 
		s contents linesDo: [:line | log logRecord: (IdleTimeRecord fromString: line) ].
	] ensure: [ s close ].
	^ log