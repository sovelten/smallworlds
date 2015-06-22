as yet unclassified
defaultActor
	^((self
		name: 'player'
		shortDescription: 'eager adventurer'
		longDescription:'You are an eager adventurer.')
			parser: CommandParser defaultParser)