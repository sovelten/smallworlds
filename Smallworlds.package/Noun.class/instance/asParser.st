accessing
asParser
	^(self synonyms collect: [ :s | self parseSynonym: s ]) asChoiceParser.