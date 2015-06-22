accessing
receiveHooks
	self parsedArguments do: [ :object |
		object addHooks: self.
	].
	actor location addHooks: self.
	actor addHooks: self.