testIfTrue
	self
		assert:
			(false
				ifTrue: [ 'alternativeBlock' ]) isNil