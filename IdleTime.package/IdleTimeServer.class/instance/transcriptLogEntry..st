callbacks
transcriptLogEntry: aDict
	| now |
	now := DateAndTime now.
	Transcript 
		show: 'check in: ';
		show: now asString;
		show: '. computer: ';
		show: (aDict at: 'cn');
		show: '. ip: ';
		show: (aDict at: 'ip');
		show: '. idletime: ';
		show: (aDict at: 'idletime') asNumber seconds asString;
		show: '.';
		cr.
	