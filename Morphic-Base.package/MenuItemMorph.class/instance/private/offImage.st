offImage
	"Return the form to be used for indicating an off marker"
	| form |
	form := Form extent: (self fontToUse ascent-2) asPoint depth: 16.
	(form getCanvas)
		frameAndFillRectangle: form boundingBox fillColor: (Color gray: 0.9) 
			borderWidth: 1 borderColor: Color black.
	^form