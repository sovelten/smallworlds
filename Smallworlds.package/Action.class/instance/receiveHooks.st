accessing
receiveHooks
	self arguments do: [ :object |
		object addHooks: self.
	].
	actor location addHooks: self.
	actor addHooks: self.