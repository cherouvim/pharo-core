gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ collectors ifNotNil: [ 
			(collectors gtInspectorItemsIn: composite) ]