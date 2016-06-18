accessing
visibleContentsButPlayer
	| allContents |
	allContents := OrderedCollection with: self.
	self checkOpen ifTrue: [
		self contentsButPlayer do: [ :each | 
			allContents addAll: each visibleContents
		]
	].
	^allContents