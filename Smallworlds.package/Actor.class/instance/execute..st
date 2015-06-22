private
execute: aParsedCommand
	| command |
	"Execute the given action, answering an appropriate Response"
	command := aParsedCommand command.
	(self respondsTo: command)
		ifTrue: [
			^aParsedCommand executeOn: self.
		]
		ifFalse: [
			^Response text: aParsedCommand command, ' does not accept ', aParsedCommand arguments size asString, ' argument(s).'
		]