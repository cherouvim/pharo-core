labelClicked: anAnnouncement
	| wrapper index |
	
	wrapper := anAnnouncement source.
	index := pickList indexFor: wrapper model.
	
	pickList selectedIndex = index ifTrue: [ index := 0 ].
	pickList setSelectedIndex: index.