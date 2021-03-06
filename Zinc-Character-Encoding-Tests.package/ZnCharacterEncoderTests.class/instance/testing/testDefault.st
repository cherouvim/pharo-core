testDefault
	| string bytes |
	self assert: ZnCharacterEncoder default equals: ZnNullEncoder new.
	string := 'Der Weg zur H�lle ist mit guten Vors�tzen gepflastert.'.
	bytes := ZnUTF8Encoder new encodeString: string.
	ZnDefaultCharacterEncoder 
		value: ZnUTF8Encoder new
		during: [ 
			self 
				assert: (ZnCharacterEncoder default decodeBytes: bytes) 
				equals: string ].
	ZnDefaultCharacterEncoder 
		value: ZnUTF8Encoder new
		during: [ 
			self 
				assert: ((ZnCharacterEncoder newForEncoding: 'unknown') decodeBytes: bytes) 
				equals: string ]