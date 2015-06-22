*Smallworlds-Extras
openConnections
	| directions |
	"Return set of cardinal directions which do not have connections"
	
	directions := self connections collect: [ :each | each noun name ].
	^(#('north' 'south' 'west' 'east') difference: directions) asSet