command
doPut: item on: container
	
	container checkContainer
		ifTrue: [
			self inventory remove: item.
			container add: item.
			^'You put ', item noun showDefinite, ' on ', container noun showDefinite.
		]
		ifFalse: [ ^'You can''t put ', item noun showDefinite, ' on ', container noun showDefinite ]