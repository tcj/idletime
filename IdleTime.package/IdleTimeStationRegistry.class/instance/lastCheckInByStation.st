accessing
lastCheckInByStation

	^ lastCheckInByStation ifNil: [lastCheckInByStation := Dictionary new]