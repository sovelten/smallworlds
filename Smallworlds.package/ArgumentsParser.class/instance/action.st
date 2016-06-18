responding
action
	"Case no choice needed"
	self checkParsed ifTrue: [
		^Action verb: verb actor: actor.
	].
	"Case no argument found"
	self checkFailed ifTrue: [  
		^SimpleAction response: verb failMessage.
	].
	"Case ambiguous argument"
	verb arguments do: [  :each |
		each checkParsed ifFalse: [
			^SimpleAction response: each choiceMessage
		]
	]