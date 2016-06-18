accessing
choiceMessage
	^'Be more specific. Did you mean ',
	(', ' join: (items withIndexCollect: [ :each :i | '(', i asString, ') ', each showName ])), '?'.