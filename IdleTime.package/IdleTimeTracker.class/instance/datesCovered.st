reporting
datesCovered
	| dates | 
	dates := Set new.
	self allLogs do: [:log | dates addAll: log dates].
	^ dates