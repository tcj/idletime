other
logToTranscript
	| s | 
	s := '{1} ({2}) {3} ({4}->{5}) at {6}' format: {self computerName. self ipAddress. self state asString. self oldRecord idleTimeSeconds asString.  self newRecord idleTimeSeconds asString. self timestamp asTime asString }.
	Transcript show: s; cr.