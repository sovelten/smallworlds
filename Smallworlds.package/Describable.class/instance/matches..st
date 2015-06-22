selecting
matches: aString
	| pattern |
	
	pattern := '*', aString, '*'.
	^(pattern match: self noun name) | (pattern match: self shortDescription)