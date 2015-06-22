as yet unclassified
parseArguments
	actor inventory anyContentMatching: arguments first
		ifFound: [ :object | self parsedArguments: (Array with: object). ^true ]
		ifNone: [ ^false ].