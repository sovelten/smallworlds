instance creation
drop
	^(TAction signatures: #(#drop: #dump: #lose:))
		objectsInScope: self heldScope;
		failMessageBlock: [ :obj | 'You don''t have a ', obj, '.' ]