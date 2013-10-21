searchAccept: aString
	self searchUpdate: aString.
	
	list size = 1
		ifTrue: [ ^ self accept: list first ].
	
	(list detect: [ :item | (self displayItem: item) = aString] ifNone: [ nil])
		ifNotNilDo: [ :item| ^ self accept: item ].
		
	acceptNewEntry ifTrue: [ ^ self accept: aString ].
	
	list ifNotEmpty: [ ^ self giveFocusToList].