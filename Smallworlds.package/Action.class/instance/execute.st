running
execute
	self receiveHooks.
	self wasStopped ifFalse: [ 
		self executeDefault.
	].