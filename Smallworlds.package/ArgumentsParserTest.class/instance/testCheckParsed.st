tests-as yet unclassified
testCheckParsed
	| argP argument |
	argP := ArgumentsParser actor: Actor defaultActor verb: Verb take.
	self assert: argP checkParsed.
	argP verb addArgument: 'ball'.
	argument := argP verb arguments first.
	self deny: argP checkParsed.
	argument items: (OrderedCollection with: (Thing name: 'ball')).
	self assert: argP checkParsed.
	argP verb addArgument: 'glass'.
	self deny: argP checkParsed.