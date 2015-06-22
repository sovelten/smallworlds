initialization
initialize
	super initialize.
	locations := OrderedCollection new.
	turnCount := 0.
	parser := CommandParser new.
	parser
		abbreviations: ParsedCommandDictionary new initialize;
		verbs: (VerbDictionary fromStrings: #('save' 'restore'))