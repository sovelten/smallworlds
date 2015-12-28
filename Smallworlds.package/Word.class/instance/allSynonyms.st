accessing
allSynonyms
	| all |
	all := Set withAll: synonyms.
	^ all add: name; yourself.