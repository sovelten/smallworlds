instance creation
default
	^self new
		abbreviations: AbbreviationDictionary defaultDictionary;
		verbs: (OrderedCollection new
			add: Verb drop;
			add: Verb exit;
			add: Verb go;
			add: Verb inventory;
			add: Verb look;
			add: Verb lookAt;
			add: Verb putOn;
			add: Verb say;
			add: Verb take;
			add: Verb open;
			add: Verb close;
			yourself);
		updateParser