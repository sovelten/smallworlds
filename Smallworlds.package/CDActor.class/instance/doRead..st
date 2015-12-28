command
doRead: item
	item checkReadable ifTrue: [  
		^self doLook: item.
	]
	ifFalse: [ ^'There''s nothing written here.' ]