testOpenBrowseOnInstalledTraitMethod
	| browser |
	browser := (Class>>#localSelectors) browse.
	browser changed.
	browser close.