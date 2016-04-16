accessing
parseArguments
	|  objects |
	objects := self objectsInScope value: actor.
	self parseDefault.