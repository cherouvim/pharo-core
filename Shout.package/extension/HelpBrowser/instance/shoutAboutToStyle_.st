shoutAboutToStyle: aPluggableShoutMorphOrView 
	^ (self rootTopic respondsTo: #canHaveSyntaxHighlighting)
				and: [self rootTopic canHaveSyntaxHighlighting]