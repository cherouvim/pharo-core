testConversionToFrom
	"Non regresson test for http://code.google.com/p/pharo/issues/detail?id=986"

	self assert: (('���' convertToEncoding: 'mac-roman') convertFromEncoding: 'mac-roman') = '���'