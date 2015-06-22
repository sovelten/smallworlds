instance creation
defaultParser

	^ self new
		verbs: VerbDictionary defaultVerbDictionary;
		actions: ActionDictionary defaultActionbDictionary;
		abbreviations: ParsedCommandDictionary defaultDictionary;
		yourself.