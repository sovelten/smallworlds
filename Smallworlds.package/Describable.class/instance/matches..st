selecting
matches: aString
	^self asParser end matches: aString.
	"pattern := '*', aString, '*'.
	^(pattern match: self noun name) | (pattern match: self shortDescription)"