at: key ifAbsent: aBlock 
 	"Answer the value associated with the key or, if key isn't found,
 	answer the result of evaluating aBlock."
 
 	^(array at: (self findElementOrNil: key)) 
		ifNil: [aBlock value]
		ifNotNil: [:o | o].
 	