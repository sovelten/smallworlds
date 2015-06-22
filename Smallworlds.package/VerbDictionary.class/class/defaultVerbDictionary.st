instance creation
defaultVerbDictionary

	^self new
		addVerb: Verb take;
		addVerb: Verb drop;
		addVerb: Verb exit;
		addVerb: Verb say;
		addVerb: Verb go;
		addVerb: Verb look;
		addVerb: Verb lookAt;
		addVerb: Verb inventory;
		addVerb: Verb putOn