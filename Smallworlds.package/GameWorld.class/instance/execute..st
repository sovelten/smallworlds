private
execute: anAction
	| command |
	"Execute the given action, answering an appropriate Response"
	command := anAction command.
	(self respondsTo: command)
		ifTrue: [
			^anAction executeOn: self.
		]
		ifFalse: [
			^Response text: anAction command, ' does not accept ', anAction arguments size asString, ' argument(s).'
		]