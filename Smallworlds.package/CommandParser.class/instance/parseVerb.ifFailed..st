private
parseVerb: aString ifFailed: aBlock
	"Tries to parse a string using the verb dictionary, returning an action"
	| stream firstWord restOfString action actionClass |
	
	stream := aString readStream.
	firstWord := stream nextDelimited: Character space.
	restOfString := stream upToEnd.

	^verbs at: firstWord
		ifPresent: [ :set |
			set detect: [ :signature |
				actionClass := actions at: signature.
				"action := self parse: restOfString with: signature."
				action := actionClass parses: restOfString.
				action isNotNil.
			]
			ifFound: [ ^action ]
			ifNone: [ ^SayAction saying: firstWord,' what?' ]
	 	]
		ifAbsent: aBlock
