classes
	^classes ifNil: [ classes := self collectFromAllPackages: #definedClasses ]