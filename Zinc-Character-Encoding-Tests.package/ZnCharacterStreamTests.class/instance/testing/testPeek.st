testPeek
	| string bytes readStream |
	string := '�l�ve en Fran�ais'.
	bytes := ZnUTF8Encoder new encodeString: string.
	readStream := ZnCharacterReadStream on: bytes readStream.
	self assert: readStream peek equals: '�' first.
	self assert: readStream peek equals: '�' first.
	self assert: readStream next equals: '�' first.
	readStream skip: 'l�ve ' size.
	self assert: readStream peek equals: $e.
	self assert: (readStream next: 'en Fran�ais' size) equals: 'en Fran�ais'