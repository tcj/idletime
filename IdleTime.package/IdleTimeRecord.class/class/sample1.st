as yet unclassified
sample1
	| d | 
	d := Dictionary new.
	d at: 'cn' put: 'TEST-01'.
	d at: 'idletime' put: 669.
	d at: 'ip' put: '127.0.0.1'.
	^ self newFromDictionary: d.
