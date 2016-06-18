as yet unclassified
increaseBlunderCount
	| desc |
	blunderCount := blunderCount+1.
	blunderCount = 2 ifTrue: [  
		desc := 'The message has been carelessly trampled, making it difficult to read.
		You can just distinguish the words... "You have lost"'.
		self shortDescription: desc.
		self longDescription: desc.
	]
