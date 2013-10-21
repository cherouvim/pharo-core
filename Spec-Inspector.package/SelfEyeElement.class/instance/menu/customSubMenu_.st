customSubMenu: aMenu
	"Subclasse may add more menu items here"

	aMenu 
		add: 'Inst var refs...'
			target: self
			selector: #browseInstVarRefs;
		add: 'Inst var defs...'
			target: self
			selector: #browseInstVarDefs;
		add: 'Class var refs...'
			target: self
			selector: #classVarRefs;
		add: 'Class variables'
			target: self
			selector: #browseInstClassVariables;
		add: 'Class refs'
			target: self
			selector: #browseClassRefs.
		
	aMenu addLine.	