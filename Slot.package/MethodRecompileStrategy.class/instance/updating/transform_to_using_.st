transform: oldClass to: newClass using: aMethodModification
	newClass compileAllFrom: oldClass.
	
	"Somehow something is not fully ready yet when recompiling so we have to manually update the class literal (last literal) to properly use the newClass' name"
	self updateClassLiteralKeysIn: newClass