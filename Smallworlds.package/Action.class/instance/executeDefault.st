running
executeDefault
	| response |
	hooks do: [ :each | each value: self ].
	response := actor perform: self callback withArguments: things asArray.
	self addResponse: response.
	self finish.