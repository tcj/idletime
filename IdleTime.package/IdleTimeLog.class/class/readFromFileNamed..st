as yet unclassified
readFromFileNamed: aString
	^ self readFrom: (FileStream oldFileNamed: aString)
	