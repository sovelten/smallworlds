as yet unclassified
defaultActor
	| actor |
	actor := self
		name: 'player'
		shortDescription: 'eager adventurer'
		longDescription:'You are an eager adventurer.'.
		
	actor noun addSynonym: 'self'.
	
	^actor