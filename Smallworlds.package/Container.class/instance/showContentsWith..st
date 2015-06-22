printing
showContentsWith: showBlock
	^String crlf join: (contents collect: showBlock)