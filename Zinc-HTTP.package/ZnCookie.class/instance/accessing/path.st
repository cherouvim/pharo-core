path
	^ attributes at: 'path' ifAbsent: [ '/' ]