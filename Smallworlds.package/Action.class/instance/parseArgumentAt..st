changing
parseArgumentAt: n
	| objects |
	objects := self objectsInScope value: self actor.
	^objects detect: [ :each | each matches: (arguments at: n) ]
		ifFound: [ :object | arguments at: n put: object. true ]
		ifNone: [ false ]