parsing
parse: aString ifFailed: aBlock
	verb arguments do: [ :each |
		each checkParsed ifFalse: [
			each parse: aString
				ifFailed: [ aBlock value ]
		]
	]