reaping
reap
"	Transcript show: 'here we reap...'; cr."
	self stationRegistry stationsNotReporting do: [:station | (self logForStation: station) reap ].