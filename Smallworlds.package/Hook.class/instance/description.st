initialization
description
	| baseDesc |
	baseDesc := super description.
	self checkFull
		ifTrue: [ ^baseDesc, ' with a cloak hanging on it.' ]
		ifFalse: [ ^baseDesc, '.' ]