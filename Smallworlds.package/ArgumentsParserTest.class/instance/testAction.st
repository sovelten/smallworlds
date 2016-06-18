tests-responding
testAction
	| parser verb rball bball |
	"Case 1: intransitive verb"
	verb := Verb look.
	parser := ArgumentsParser actor: actor verb: verb.
	self assert: parser action actor equals: actor.
	self assert: parser action verb equals: verb.
	"Case 2: failed transitive verb"
	verb := Verb take addArgument: 'ball'.
	parser := ArgumentsParser actor: actor verb: verb.
	self assert: parser action respond equals: (verb failMessage).
	"Case 3: choice"
	rball := Thing name: 'red ball'.
	bball := Thing name: 'blue ball'.
	actor location add: bball.
	actor location add: rball.
	verb := Verb take addArgument: 'ball'.
	parser := ArgumentsParser actor: actor verb: verb.
	self assert: parser action respond equals: (verb arguments first choiceMessage).	