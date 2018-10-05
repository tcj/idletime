as yet unclassified
fromOldFile: aFileName
	| s lines records first | 
	s := FileStream oldFileNamed: aFileName.
	records := OrderedCollection new.
	lines := s contents lines.
	first := lines removeFirst.

	s contents linesDo: [:line | records add: (IdleTimeRecord fromString: line) ].
	^ records