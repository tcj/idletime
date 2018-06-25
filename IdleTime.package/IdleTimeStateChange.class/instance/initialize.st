initialize-release
initialize
	super initialize.
	timestamp := DateAndTime now.
	activityState := #noChange.
	reportingState := #reporting.