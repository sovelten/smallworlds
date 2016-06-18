accessing
receiveHooks
	self things do: [ :thing |
		thing addHooks: self.
	].
	actor location addHooks: self.
	actor addHooks: self.