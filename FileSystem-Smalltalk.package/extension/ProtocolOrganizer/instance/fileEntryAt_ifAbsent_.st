fileEntryAt: pathSegment ifAbsent: absentBlock
	| decodedName |
	1halt.
	decodedName := FSSTFileNameEncoder decode: pathSegment.
	^ self getProtocolNamed: decodedName ifNone: absentBlock