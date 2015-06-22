as yet unclassified
parseArguments
	| connections |

	connections := actor location connectionsTo: arguments first.
	connections
		ifEmpty: [ ^false ]
		ifNotEmpty:[
			self parsedArguments: (Array with:connections first).
			^true.
		].