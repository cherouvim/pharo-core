processEnter: anEvent
	(super processEnter: anEvent)
		ifFalse: [ self okButton performAction ].
		
	^true