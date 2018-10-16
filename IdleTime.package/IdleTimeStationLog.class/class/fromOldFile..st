reading from textfile
fromOldFile: aFileName
	| s records station log | 
	"Create a new log from an old log file.  Reverse contents of log file so we start from the oldest entry."
	records := OrderedCollection new.

	s := FileStream oldFileNamed: aFileName.
	[
		s contents lines do: [:line | records add: (IdleTimeRecord fromString: line)].
	] ensure: [s close].
	
	station := IdleTimeStation newFromRecord: (records first).
	
	log := IdleTimeStationLog newForStation: station.
	records reversed do: [:record | 
		log logRecord: record.
		self halt.
		log reap].
		
	^ log