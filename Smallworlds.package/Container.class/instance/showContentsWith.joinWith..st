printing
showContentsWith: showBlock joinWith: aString
	^aString join: (contents collect: showBlock)