descriptionTextForBranch: aBranch repository: repo
	| text |
	
	self flag: #todo. "This is a duplication of IceRepositoryModel>>descriptionTextForBranch:. 
	This can be solved by using an IceBranchModel instead the branch directly"
	text := aBranch name asText.
	(repo branch = aBranch)
		ifTrue: [ text allBold ].
		
	^ text