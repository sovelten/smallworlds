as yet unclassified
parserWith: IVerbs transitive: TVerbs
	| iverb tverb object start expression |
	iverb := self verb: IVerbs.
	tverb := self verb: TVerbs.
	object := self words.
	expression := iverb / (tverb, object).
	start := expression end.
	^start