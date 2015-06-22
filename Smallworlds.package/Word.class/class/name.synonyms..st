instance creation
name: aString synonyms: aStringSet
	"Creates a new verb with synonyms"
	^self new
		name: aString;
		synonyms: aStringSet asSet.