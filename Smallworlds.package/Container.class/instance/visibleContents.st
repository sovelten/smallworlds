accessing
visibleContents
	| allContents |
	allContents := OrderedCollection with: self.
	self checkOpen ifTrue: [
		self contents do: [ :each | 
			allContents addAll: each visibleContents
		]
	].
	^allContents