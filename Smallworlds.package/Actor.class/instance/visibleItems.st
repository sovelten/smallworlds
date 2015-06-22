private
visibleItems
	"Returns a coolection of items the player can see"
	^self inventory contents, location contentsButPlayer