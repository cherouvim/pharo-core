classCategory
	^ self actualClass ifNotNil: #category ifNil: [ RPackage defaultPackageName ]
