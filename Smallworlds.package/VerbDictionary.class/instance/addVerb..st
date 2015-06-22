as yet unclassified
addVerb: aVerb
	self addEntry: aVerb name signature: aVerb signature.

	aVerb synonyms collect: [ :synonym |
		self addEntry: synonym signature: aVerb signature
	]