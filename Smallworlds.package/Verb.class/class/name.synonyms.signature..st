private
name: aString synonyms: aStringCollection signature: aSymbol
	"Creates a new verb with synonyms"
	^ Verb new
		name: aString;
		synonyms: aStringCollection;
		signature: aSymbol.