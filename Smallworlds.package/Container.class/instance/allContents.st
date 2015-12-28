accessing
allContents
	| allContents |
	allContents := OrderedCollection with: self.
	contents do: [ :each | 
			allContents addAll: each allContents
	].
	^allContents