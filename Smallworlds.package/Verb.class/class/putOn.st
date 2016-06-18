instance creation
putOn
	^(TIVerb signature: #put:on:)
		failMessageBlock: [ :obj1 | 'You don''t have a ', obj1, '.' ];
		failSecondMessageBlock: [ :obj1 | 'I don''t understand ', obj1, '.' ]