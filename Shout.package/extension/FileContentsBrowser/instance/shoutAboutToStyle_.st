shoutAboutToStyle: aPluggableShoutMorphOrView 
	self shoutIsModeStyleable
		ifFalse: [^ false].
	aPluggableShoutMorphOrView classOrMetaClass: self selectedClassOrMetaClass.
	^ true