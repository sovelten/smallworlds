accessing
item
	^choice ifNil: [ items first ]
			  ifNotNil: [ items at: choice ]