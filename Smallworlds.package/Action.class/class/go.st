instance creation
go
	^(TAction signature: #go:)
		objectsInScope: self connectionScope;
		failMessageBlock: [ :obj | 'There''s no passage leading ', obj, '.' ]