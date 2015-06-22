accessing
parsedArguments
	parsedArguments ifNil: [ self parsedArguments: (Array new:0)].
	^parsedArguments.