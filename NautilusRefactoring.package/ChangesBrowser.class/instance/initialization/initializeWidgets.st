initializeWidgets

	self instantiateModels:  #(
		cancelButton 	ButtonModel
		acceptButton 	ButtonModel
		pickList 		PickListModel
		textArea 		TextModel ).

	self initializeAcceptButton.
	self initializeCancelButton.
	self initializePickList.
	self initializeTextArea.
	self setFocus.
	self
		bindKeyCombination: $s command toAction: [ self accept ];
		bindKeyCombination: Character escape toAction: [ self cancel ]