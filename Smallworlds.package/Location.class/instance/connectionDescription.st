printing
connectionDescription

	self connections size > 0 ifTrue: [  
		self connections size = 1 ifTrue: [ 
			^'There is an exit leading ', (self connections at:1) name,'.'
		]
		ifFalse: [ 
			^'There are exits leading ',(', ' join: (self connections collect: [ :each | each name ])),'.'
		]
	]
	ifFalse: [ ^'' ]