as yet unclassified
parseArguments
	actor location anyVisibleContentMatching: arguments first
		ifFound: [ :object | self parsedArguments: (Array with: object). ^true ]
		ifNone: [ ^false ].