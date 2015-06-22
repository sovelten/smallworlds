instance creation
fromVerbs: aVerbCollection
	| newDictionary |
	"Creates the dictionary from a collection of verbs"
	newDictionary := self new.

	aVerbCollection collect: [ :verb |  
		newDictionary addVerb: verb
	].

	^ newDictionary