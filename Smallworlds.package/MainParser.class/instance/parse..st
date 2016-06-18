as yet unclassified
parse: aString
	| verb ret |
	mode = #parseVerb ifTrue: [  
		verb := verbParser parse: aString
			ifFailed: [ ^SimpleAction response: 'Command not found' ].
		ret := actor beforeParsing: verb.
		ret ifNotNil: [ ^ret ].
		ret := actor location beforeParsing: verb.
		ret ifNotNil: [ ^ret ].
		argumentsParser := ArgumentsParser actor: actor verb: verb.
		argumentsParser checkFailed
			ifTrue: [ ^SimpleAction response: verb failMessage ].
		argumentsParser checkParsed
			ifFalse: [ mode := #parseArguments ].
	]
	ifFalse: [
		mode := #parseVerb.
		argumentsParser parse: aString
			ifFailed: [
				^SimpleAction response: 'Invalid option.' 
			].
	].
	^argumentsParser action.