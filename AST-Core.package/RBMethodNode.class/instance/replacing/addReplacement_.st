addReplacement: aStringReplacement 
	replacements ifNil: [^self].
	replacements add: aStringReplacement