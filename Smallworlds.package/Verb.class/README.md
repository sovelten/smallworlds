A verb is a command that can be recognized and parsed into actions by the parser.

Instance variables: 
	signatures: The signature symbols that the verb can be understood by.
	arguments: Verb arguments
	objectsInScope: Block taking an actor and returning a collection of things in the scope.
	failMessageBlock: Block taking a string and returning a message that is used when the argument fails to be parsed.