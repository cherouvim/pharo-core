columnsFor: anEntry
	"Answer the array of contexts."

	| first second index stringRepresentation |
	stringRepresentation := anEntry printString.
	index := stringRepresentation findString: '>>'.
	first := stringRepresentation copyFrom: 1 to: index-1.
	second := stringRepresentation copyFrom: index+2 to: stringRepresentation size.
	^ {(self buildClassNameFor: first). second}