instance creation
verb: aVerb actor: anActor
	| callback things |
	callback := ('do', aVerb signature capitalized) asSymbol.
	things := (aVerb arguments collect: [ :each | each item ]).
	^self new
		verb: aVerb;
		actor: anActor;
		things: things;
		callback: callback.