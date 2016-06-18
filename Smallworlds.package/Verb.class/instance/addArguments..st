accessing
addArguments: aStringCollection
	aStringCollection do: [ :each | 
		arguments add: (Argument text: each)
	]