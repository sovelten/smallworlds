initialization
initialize
	super initialize.
	locations := OrderedCollection new.
	turnCount := 0.
	parser := SWPetitParser new.
	parser
		abbreviations: AbbreviationDictionary new;
		verbs: (OrderedCollection
					with: (IVerb signature:#save)
					with: (IVerb signature:#restore)
		);
		setParser