as yet unclassified
parseArguments
	actor location deepAnyContentMatching: arguments first
		ifFound: [ :object | self parsedArguments: (Array with: object). ^true ]
		ifNone: [ ^false ].