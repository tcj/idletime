rendering
renderFilterSelectionOn: html
	html render: calendar.
	html form: [
		html div: [
			html select 
				list: self locationMenuItems;
				on: #location of: self.   "labels: "
			html submitButton text: 'filter'
		].
	].
html paragraph: self calendarDate.