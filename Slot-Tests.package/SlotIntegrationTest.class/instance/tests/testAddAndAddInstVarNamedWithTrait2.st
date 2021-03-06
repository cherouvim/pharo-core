testAddAndAddInstVarNamedWithTrait2
	"Add instance variables using the builder interface"
	
	aClass := self make: [ :builder |
		builder 
			name: self aClassName;
			traitComposition: TOne;
			slots: #( x )
		].

	self assertTraitIntegrity.
	self assert: aClass instVarNames equals: #(x).
	
	self assert: TOne traitUsers asArray equals: { aClass }.
	
	self assert: (aClass canUnderstand: #one).
	self assert: aClass new one equals: 1.

	aClass addInstVarNamed: #y.
	self assertTraitIntegrity.
	aClass addInstVarNamed: #z.
	
	self assert: aClass instVarNames equals: #(x y z).
	
	self assert: TOne traitUsers asArray equals: { aClass }.
	
	self assert: (aClass canUnderstand: #one).
	self assert: aClass new one equals: 1.