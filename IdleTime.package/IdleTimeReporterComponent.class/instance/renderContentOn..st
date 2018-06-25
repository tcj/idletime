rendering
renderContentOn: html
	self renderLocationsOn: html.
	self renderReportingStationsOn: html.
	self renderUnreportingStationsOn: html.
	"show report log for every station."
	tracker allStationsSorted do: [:station | self renderReportLogForStation: station on: html].
	