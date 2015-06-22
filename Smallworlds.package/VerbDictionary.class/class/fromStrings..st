instance creation
fromStrings: aStringCollection
	| newDictionary |
	"Creates the dictionary from a collection of verbs"
	newDictionary := self new.

	aStringCollection collect: [ :verb |  
		newDictionary addVerb: (Verb name:verb)
	].

	^ newDictionary