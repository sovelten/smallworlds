accessing
allContentsButSelf
	| allContents |
	allContents := OrderedCollection new.
	self checkOpen ifTrue: [  
		contents do: [ :each | 
			allContents addAll: each allContents
		]
	].
	^allContents