waitButton
	self captureEventsUntil: [:evt | self anyButtonPressed ]
