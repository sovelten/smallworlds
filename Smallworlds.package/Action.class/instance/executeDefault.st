running
executeDefault
	| response |
	hooks do: [ :each | each value: self ].
	response := actor perform: self callback withArguments: self arguments asArray.
	self addResponse: response.
	self finish.