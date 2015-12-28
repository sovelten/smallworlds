as yet unclassified
parserWith: verbList
	| verb start expression |
	verb := self verb: verbList.
	expression := verb.
	start := expression end.
	^start
